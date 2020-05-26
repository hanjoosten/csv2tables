{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module SASCode 
    ( tablesToCsv
    , modifiedNames
    ) where

import Import
import qualified RIO.Text as T
import qualified RIO.List as L
import qualified RIO.List.Partial as PARTIAL

tablesToCsv :: [Table] -> [Text]
tablesToCsv = concatMap createStatement . filter isDossier
  where isDossier :: Table -> Bool
        isDossier t = tableNameNew t == "BAS_DAM_DOSSIER"
modifiedNames :: [Table] -> [Text]
modifiedNames = concatMap modNames
  where 
    modNames :: Table -> [Text]
    modNames = map attShow . filter isModified . attribs
    isModified :: Attrib -> Bool
    isModified att = attNameOrg att /= attNameNew att
    attShow :: Attrib ->  Text
    attShow att = T.pack $ 
       attTableOrg att <> "." <> attNameOrg att <> "  -->  " <>
       attTableNew att <> "." <> attNameNew att
       
createStatement :: Table -> [Text]
createStatement t = 
      [ "PROC SQL;"
      , "   CREATE TABLE WORK."<>tempTableName<>" AS"
      ]
   <> T.lines cols 
   <> [ "     FROM DATAQASG."<> T.pack (tableNameOrg t)<>" t1;"
      , "QUIT;"
      , ""
      , "data WORK."<>tempTableName<>";"
      , "  set WORK."<>tempTableName<>";"
      , "  techId=_n_;"
      , "run;"
      , ""
      ]
    <> exportStatement outfilefull False
{- Uitgecommentarieerd vanwege andere manier
    <>[ "proc export"
      , "   data=WORK."<>tempTableName
      , "   outfile=\""<>outfilefull<>"\""
      , "   replace"
      , "   dbms=csv;"
--      , "   LRECL=32767;"
      , "run;"
      , ""
      ]
-}
    <> if False then addSmallSample else mempty

--    <> addSmallSample
--    <>[ ""  
--      , "proc delete DATA=WORK."<>tempTableName<>";"
--      , ""
--      ]
   where
     tempTableName = T.take 32 $ T.pack (tableNameNew t)
     outDirPRD = "\\\\LNV.INTERN\\GRP\\TCMG\\002 Onderdelen\\34-kluismap MIRA Migratie bestanden\\SAS\\Output\\PRD\\"
     outfilefull = outDirPRD
               <> "RuweData\\"
               <> T.pack (tableNameNew t)<>".csv"
     outfileSample = outDirPRD
               <> "Samples\\"
               <> "rnd_"<>T.pack (tableNameNew t)<>".csv"
     cols = "   SELECT "<> (T.intercalate ",\n          " . map mkCol . L.sort . attribs) t
     mkCol :: Attrib -> Text
     mkCol att = 
          "t1."<>(if attNameNew att == attNameOrg att
                  then T.pack (attNameNew att)<>dataType att
                  else "'"<>T.pack (attNameOrg att)<>"'n"<>dataType att<>" AS "<>T.pack (attNameNew att)
                 ) 
     addSmallSample :: [Text]
     addSmallSample =
        [ "PROC SURVEYSELECT DATA=WORK."<>tempTableName<>"()"
        , "   OUT=WORK.RANDRandomSample"
        , "   METHOD=SRS"
        , "   SELECTALL"
        , "   N=25;"
        , "RUN;"
        , ""
        ]
      <> exportStatement outfileSample True
      <> map toSASComment
        [ "proc export"
        , "   replace"
        , "   data=WORK.RANDRandomSample"
        , "   outfile=\""<>outfileSample<>"\""
        , "   dbms=csv;"
        , "run;"
        , ""
        , "proc delete DATA=WORK.RANDRandomSample;"
        ]
     exportStatement :: Text -- String containing the complete path of the file to write
                     -> Bool   -- isRandomSubset?  
                     -> [Text]
     exportStatement outfile isRandomSubset=
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
                  , "   set  WORK."<>(if isRandomSubset then "RANDRandomSample" else tempTableName)<>"   end=EFIEOD; "
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
                colNames = (map (T.pack . attNameNew) (attribs t) ++ ["techId"])
                headerRow :: [Text]
                headerRow = concatMap foo colNames
                  where foo :: Text -> [Text]
                        foo name = 
                          [ "          "<>name<>" "
                          , "       '"<>tshow (PARTIAL.maximum . map T.length $ colNames)<>"'x "
                          ]
                formatSegments :: [Text]
                formatSegments = map foo (attribs t) ++
                  [ "       format techId best12. ; "
                  ]
                  where 
                    foo :: Attrib -> Text
                    foo att = "       format "<>(T.pack $ attNameNew att)<>" "<>csvFormat att<>" ;"
                putSegments :: [Text]
                putSegments = map foo (attribs t) ++
                  [ "       put techId best12. ; "
                  ]
                  where 
                    foo :: Attrib -> Text
                    foo att = "       put "<>(T.pack $ attNameNew att)<>" "<>csvFormat att<>" @;"


csvFormat :: Attrib -> Text
csvFormat att =
    case sasType att of
      1 -> case T.pack (sasFormat att) of 
             "" -> case sasLength att of
                     8 -> "best12."
                     x -> " TODO "<>tshow x
             "DATETIME" -> case sasLength att of
                             8 -> "B8601DT19."
                             x -> " TODO: DATETIME ("<>tshow x<>")"
             x  ->  "TODO: sasformat = "<>tshow x<>" ("<>tshow (sasLength att)<>")"
      2 -> "$QUOTED"<>tshow (sasLength att+2)<>"."
      x -> "TODO. sasType == "<>tshow x

dataType :: Attrib -> Text
dataType att =
    case sasType att of
      1 -> case T.pack (sasFormat att) of 
             "" -> case sasLength att of
                     8 -> ""
                     x -> " TODO "<>tshow x
             "DATETIME" -> case sasLength att of
                             8 -> " FORMAT=B8601DT19. AS "<>T.pack (attNameNew att)
                             x -> " TODO: DATETIME ("<>tshow x<>")"
             x  ->  "TODO: sasformat = "<>tshow x<>" ("<>tshow (sasLength att)<>")"
      2 -> ""
      x -> "TODO. sasType == "<>tshow x


toSASComment :: Text -> Text
toSASComment line = " /* " <> line <> " */ "