{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module SASCode 
    ( tablesToCsv
    , modifiedNames
    ) where

import Import
import qualified RIO.Text as T
import qualified RIO.List as L
import           Data.Hashable

tablesToCsv :: [Table] -> [Text]
tablesToCsv = concatMap createStatement -- . filter _testFilter
  where
     _testFilter :: Table -> Bool
     _testFilter t = "BAS_DAM_DOSSIER_NOTITIE" == tableNameNew t

modifiedNames :: [Table] -> [Text]
modifiedNames = concatMap modNames
  where 
    modNames :: Table -> [Text]
    modNames = map attShow . filter isModified . L.sort . attribs
    isModified :: Attrib -> Bool
    isModified att = attNameOrg att /= attNameNew att
    attShow :: Attrib ->  Text
    attShow att = T.pack $ 
       attTableOrg att <> "." <> attNameOrg att <> "  -->  " <>
       attTableNew att <> "." <> attNameNew att
       
createStatement :: Table -> [Text]
createStatement t = 
      [ "PROC SQL;"
      , "   CREATE TABLE MIGRATIE."<>tempTableName<>" AS"
      ]
   <> T.lines cols 
   <> [ "     FROM DATAQASG."<> T.pack (tableNameOrg t)<>" t1;"
      , "QUIT;"
      , ""
      , "data MIGRATIE."<>tempTableName<>";"
      , "  set MIGRATIE."<>tempTableName<>";"
      , "  techId=_n_;"
      , "run;"
      , ""
      ]
    <> exportStatement outfilefull

   where
     tempTableName = T.take 32 $ T.pack (tableNameNew t)
     outDirPRD = "\\\\LNV.INTERN\\GRP\\TCMG\\002 Onderdelen\\34-kluismap MIRA Migratie bestanden\\SAS\\Output\\PRD\\"
     outfilefull = outDirPRD
               <> "RuweData\\"
               <> T.pack (tableNameNew t)<>".csv"
     cols = "   SELECT "<> (T.intercalate ",\n          " . map mkCol . L.sort . attribs) t
     mkCol :: Attrib -> Text
     mkCol att = 
          "t1."<>(if attNameNew att == attNameOrg att
                  then T.pack (attNameNew att)<>dataType att
                  else "'"<>T.pack (attNameOrg att)<>"'n"<>dataType att<>" AS "<>T.pack (attNameNew att)
                 ) 
     exportStatement :: Text -- String containing the complete path of the file to write
                     -> [Text]
     exportStatement outfile =
                  [ ""
                  , "data _null_; "
                  , "    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ "
                  , "    %let _EFIREC_ = 0; /* clear export record count macro variable */ "
                  , "    file \""<>outfile<>"\" delimiter=',' DSD DROPOVER lrecl=32767; "
                  , "    if _n_ = 1 then        /* write column names or labels */ "
                  , "     do; "
                  , "       put "
                  ]
                <> headerRow
                <>[ "       ; "
                  , "     end; "
                  , "   set  MIGRATIE."<>tempTableName<>"   end=EFIEOD; "
                  ]
                <> formatSegments   
                <>[ "     do; "
                  , "       EFIOUT + 1; "
                  ]
                <> putSegments
                <>[ "       ; "
                  , "     end; "
                  , "    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ "
                  , "    if EFIEOD then call symputx('_EFIREC_',EFIOUT); "
                  , "    run; "
                  , ""
                  ]
              where
                colNames :: [Text]
                colNames = (map (T.pack . attNameNew) (L.sort $ attribs t) ++ ["techId"])
                headerRow :: [Text]
                headerRow = L.intersperse  "       ','"
                            (map foo colNames)
                  where foo :: Text -> Text
                        foo name = "          \""<>name<>"\" "
                        
                formatSegments :: [Text]
                formatSegments = map foo (L.sort $ attribs t) ++
                  [ "       format techId best12. ; "
                  ]
                  where 
                    foo :: Attrib -> Text
                    foo att = "       format "<>(T.pack $ attNameNew att)<>" "<>csvFormat att<>" ;"
                putSegments :: [Text]
                putSegments = map foo (L.sort $ attribs t) ++
                  [ "       put techId best12. ; "
                  ]
                  where 
                    foo :: Attrib -> Text
                    foo att = T.intercalate "\n" $
                        [ "       if missing("<>(T.pack $ attNameNew att)<>")"
                        , "         then put \",\" @;"
                        ] <>
                        (if sasType att == 2 
                         then -- We hebben te maken met een tekst. Die kan mogelijk te lang zijn. Bovendien moet die worden voorzien van quotes.
                        [ "         else do;"
                        , "                   "<>attrLengte<>"=length("<>(T.pack $ attNameNew att)<>");"
                        , "                   "<>aantalLF<>" = countc("<>(T.pack $ attNameNew att)<>",'0A'x);"
                        , "                   "<>maxPassend<>"="<>(tshow $ sasFormatL att)<>"-1-"<>aantalLF<>";"
                        , "                   if "<>attrLengte<>" > max("<>maxPassend<>",1000)"
                        , "                     then "<>passend<>" = substr("<>(T.pack $ attNameNew att)<>",1,"<>maxPassend<>");"
                        , "                     else "<>passend<>" = "<>(T.pack $ attNameNew att)<>";"
                        , "                   "<>passend<>" = tranwrd("<>passend<>",'9D'x,'D0'x);"
                        , "                   put "<>passend<>" ~ @;" -- Het ~ forceert het gebruik van dubbele quotes. 
                        , "              end;"
                        ]
                         else -- een eenvoudige numerieke waarde.
                        [ "         else put "<>(T.pack $ attNameNew att)<>" @;"
                        ])
                     where maxPassend,attrLengte,passend,aantalLF :: Text
                           maxPassend = mkAttrName "maxPassend"
                           attrLengte = mkAttrName "attrLengte"
                           passend    = mkAttrName "passend"
                           aantalLF   = mkAttrName "aantalLF"
                           mkAttrName :: Text -> Text 
                           mkAttrName pref = T.take 32 $ pref <> "_"<>(tshow . abs . hash . attNameNew $ att)

csvFormat :: Attrib -> Text
csvFormat att =
    case sasType att of
      1 -> case T.pack (sasFormat att) of 
             ""         -> plainNumeric
             "BEST"     -> plainNumeric
             "DATETIME" -> case sasLength att of
                             8 -> "B8601DT19."
                             x -> diagnose<>"DATETIME ("<>tshow x<>")"
             x  ->  diagnose<>"sasformat = "<>tshow x<>" ("<>tshow (sasLength att)<>")"
      2 -> ""
      x -> diagnose<>"sasType == "<>tshow x
  where
    plainNumeric = case sasLength att of
                     8 -> "best12."
                     x -> diagnose <>tshow x
dataType :: Attrib -> Text
dataType att =
    case sasType att of
      1 -> case T.pack (sasFormat att) of 
             ""         -> plainNumeric
             "BEST"     -> plainNumeric
             "DATETIME" -> case sasLength att of
                             8 -> " FORMAT=B8601DT19. AS "<>T.pack (attNameNew att)
                             x -> diagnose<>"DATETIME ("<>tshow x<>")"
             x  ->  diagnose<>"sasformat = "<>tshow x<>" ("<>tshow (sasLength att)<>")"
      2 -> ""
      x -> diagnose<>"sasType == "<>tshow x
  where
    plainNumeric = case sasLength att of
                     8 -> ""
                     x -> diagnose <>tshow x

diagnose :: Text
diagnose = "TODO (aanpassing nodig in SASCode.hs): "    

