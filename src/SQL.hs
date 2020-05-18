{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module SQL ( makeCreateStatements
           , makeLoadScript
           ) where

import Import
import RIO.Char
import qualified RIO.List as L
import qualified RIO.Text as T

makeLoadScript :: [Table] -> [Text]
makeLoadScript = concatMap loadStatement

loadStatement :: Table -> [Text]
loadStatement t = 
-- COPY persons(first_name,last_name,dob,email) 
-- FROM 'C:\tmp\persons.csv' DELIMITER ',' CSV HEADER;
      [ "TRUNCATE TABLE "<>T.pack (tableNameNew t)<>";" 
      , "\\COPY "<>T.pack (tableNameNew t)
                 <>"("<>T.intercalate ", " ("techId" : (map (T.pack . attNameNew) . L.sort $ attribs t))
                 <>") FROM 'PAD-NAAR_CSVs"<>T.pack (tableNameNew t)<>".csv' DELIMITER ',' CSV HEADER;"
      , ""]

makeCreateStatements :: [Table] -> [Text]
makeCreateStatements = concatMap createStatement

createStatement :: Table -> [Text]
createStatement t = 
      [ "DROP TABLE IF EXISTS "<> T.pack (tableNameNew t)<>";"
      , "CREATE TABLE "<>T.pack (tableNameNew t)<>" (" 
      , "    techId INTEGER PRIMARY KEY,"]
   <> T.lines cols
   <> [ ");"
      , ""
      ]
   <> comments
   <> [ ""
      ]
   where
     cols = "    "<> (T.intercalate ",\n    " . map mkCol . L.sort . attribs) t
     mkCol :: Attrib -> Text
     mkCol att = 
          T.pack (attNameNew att)<> " "<>dataType att
     comments = map ("    "<>) . map comment . L.sort . attribs $ t
     comment :: Attrib -> Text
     comment att = T.pack $ "comment on column "<>tableNameNew t<>"."<>attNameNew att <> " is '"<>(map toUpper $ sasLable att)<>"';"
dataType :: Attrib -> Text
dataType att =
    case sasType att of
      1 -> case T.pack (sasFormat att) of 
             "" -> case sasLength att of
                     8 -> if sasFormatD att == 0 
                          then let intType 
                                    | sasFormatL att > 9 = "bigint"
                                    | sasFormatL att > 4 = "integer"
                                    | otherwise = "smallint"
                               in intType
                          else "numeric("<>tshow (sasFormatL att)<>","<>tshow (sasFormatD att)<>")"
                     x -> "TODO "<>tshow x
             "DATETIME" -> case sasLength att of
                             8 -> "timestamp"
                             x -> "TODO: DATETIME ("<>tshow x<>")"
             x  ->  "TODO: sasformat = "<>tshow x<>" ("<>tshow (sasLength att)<>")"
      2 -> "varchar ("<>tshow (sasFormatL att)<>")"
      x -> "TODO. sasType == "<>tshow x
