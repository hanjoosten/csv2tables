{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module SASCode 
    ( tablesToCsv
    , modifiedNames
    ) where

import Import
import qualified RIO.Text as T
import qualified RIO.List as L

tablesToCsv :: [Table] -> [Text]
tablesToCsv = concatMap createStatement -- . filter _testFilter
  where
     _testFilter :: Table -> Bool
     _testFilter t = "BAS_VKM_VAR_GEGEVENS" == tableNameNew t

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
                  , "   set  WORK."<>tempTableName<>"   end=EFIEOD; "
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
                      if hasProblems att 
                      then 
                        [ "       /* OPGELET: "<>(T.pack $ attNameNew att)<>" WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */"
                        , "       put '22'x "<>tshow dummyTekst<>" +(-1) '22'x \",\" @;"
                        ]
                      else 
                        [ "       if missing("<>(T.pack $ attNameNew att)<>")"
                        , "         then put \",\" @;"
                        , "         else do;"
                        , "                 if find("<>(T.pack $ attNameNew att)<>",'0A'x) > 0 and 2+klength("<>(T.pack $ attNameNew att)<>") = klength(quote(trim("<>(T.pack $ attNameNew att)<>")))"
                        , "                   then put '22'x "<>(T.pack $ attNameNew att)<>" +(-1) '22'x \",\" @;"
                        , "                   else put "<>(T.pack $ attNameNew att)<>" @;"
                        , "              end;"
                        ]
                    



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
      2 -> ""
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


-- | Dit is een opsomming van velden waar problemen met newline / UTF8 codering in voorkomen. 
--   Voor de korte termijn gaan we die vullen met dummy tekst
hasProblems :: Attrib -> Bool
hasProblems att = or
   [ attTableNew att == "BAS_COR_CORRESPONDENTIE" && attNameNew att == "Omschrijving"
   , attTableNew att == "BAS_DAM_DECLARATIE"      && attNameNew att == "Notitie"
   , attTableNew att == "BAS_DAM_DOSSIER_NOTITIE" && attNameNew att == "Notitie"
   , attTableNew att == "BAS_DAM_TERMIJN_PARAAF_NOTITIE" && attNameNew att == "Toelichting"
   , attTableNew att == "BAS_RDM_VARIABELE" && attNameNew att == "Toelichting"
   , attTableNew att == "BAS_VKM_VAR_GEGEVENS" && take 10 (attNameNew att) == "TEKSTBLOK_"
   ]
dummyTekst :: Text
dummyTekst = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor."