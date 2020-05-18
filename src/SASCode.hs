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
tablesToCsv = concatMap createStatement

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
      , "proc export"
      , "   data=WORK."<>tempTableName
      , "   outfile=\""<>outfilefull<>"\""
      , "   replace"
      , "   dbms=csv;"
      , "run;"
      , ""
      ]
    <> addSmallSample
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
                  else "'"<>T.pack (attNameOrg att)<>"'n AS "<>T.pack (attNameNew att)
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
        , "proc export"
        , "   replace"
        , "   data=WORK.RANDRandomSample"
        , "   outfile=\""<>outfileSample<>"\""
        , "   dbms=csv;"
        , "run;"
        , ""
        , "proc delete DATA=WORK.RANDRandomSample;"
        ]
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


