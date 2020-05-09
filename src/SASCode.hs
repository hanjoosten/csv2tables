{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module SASCode (tablesToCsv) where

import Import
import qualified RIO.Text as T
import qualified RIO.List as L

tablesToCsv :: [Table] -> [Text]
tablesToCsv = concatMap createStatement

createStatement :: Table -> [Text]
createStatement t = 
      [ "PROC SQL;"
      , "   CREATE TABLE WORK."<>tempTableName<>" AS"
      ]
   <> T.lines cols 
   <> [ "     FROM DATAQASG."<> T.pack (tableName t)<>" t1;"
      , "QUIT;"
      , ""
      , "proc export"
      , "   data=WORK."<>tempTableName
      , "   outfile=\""<>outfile<>"\""
      , "   dbms=csv;"
      , "run;"
      , ""
      , "proc delete DATA=WORK."<>tempTableName<>";"
      , ""
      ]
   where
     tempTableName = "Hopseflops"
     outfile = "\\\\LNV.INTERN\\GRP\\TCMG\\002 Onderdelen\\34-kluismap MIRA Migratie bestanden"
               <> "\\SAS\\Output\\PRD\\RuweData\\"
               <> T.pack (tableName t)<>".csv"
     cols = "   SELECT "<> (T.intercalate ",\n          " . map mkCol . L.sort . attribs) t
     mkCol :: Attrib -> Text
     mkCol att = 
          "t1."<>(if attNameNew att == attNameOrg att
                  then T.pack (attNameNew att)<>dataType att
                  else "'"<>T.pack (attNameOrg att)<>"'n AS "<>T.pack (attNameNew att)
                 ) 

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
