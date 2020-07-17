{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module SQL ( makeCreateTableStatements
           , makeDropTableStatements
           , makeLoadScript
           ) where

import Import
import RIO.Char
import qualified RIO.List as L
import qualified RIO.Text as T

makeLoadScript :: [Table] -> [Text]
makeLoadScript ts = 
    [ "SET client_encoding = 'WINDOWS-1252';"
    , ""
    ]
  <> concatMap loadStatement ts

loadStatement :: Table -> [Text]
loadStatement t = 
-- COPY persons(first_name,last_name,dob,email) 
-- FROM 'C:\tmp\persons.csv' DELIMITER ',' CSV HEADER;
      [ "TRUNCATE TABLE "<>T.pack (tableNameNew t)<>";" 
      , "\\COPY "<>T.pack (tableNameNew t)
                 <>"("<>T.intercalate ", " ((map (T.pack . attNameNew) . L.sort $ attribs t)++["techId"]  )
                 <>") FROM 'PAD-NAAR_CSVs"<>T.pack (tableNameNew t)<>".csv' DELIMITER ',' CSV HEADER;"
      , ""]

makeCreateTableStatements :: [Table] -> [Text]
makeCreateTableStatements = concatMap createTableStatement

makeDropTableStatements :: [Table] -> [Text]
makeDropTableStatements xs = 
       concatMap dropTableStatement xs
   <> ["DROP TABLE IF EXISTS BAS_DAR_COR_BERICHT_BIJLAGE;"] -- Deze tabel is ooit aangemaakt, maar niet meer in gebruik. 

dropTableStatement :: Table -> [Text]
dropTableStatement t = ["DROP TABLE IF EXISTS "<> T.pack (tableNameNew t)<>";"]

createTableStatement :: Table -> [Text]
createTableStatement t = 
      dropTableStatement t
   <> [ "CREATE TABLE "<>T.pack (tableNameNew t)<>" (" 
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
             ""         -> plainNumeric
             "BEST"     -> plainNumeric
             "DATETIME" -> case sasLength att of
                             8 -> "timestamp"
                             x -> diagnose<>"DATETIME ("<>tshow x<>")"
             x  ->  diagnose<>"sasformat = "<>tshow x<>" ("<>tshow (sasLength att)<>")"
      2 -> "varchar ("<>tshow (sasFormatL att)<>")"
      x -> diagnose<>" sasType == "<>tshow x
  where 
     plainNumeric :: Text
     plainNumeric = case sasLength att of
                     8 -> if sasFormatD att == 0 
                          then let intType 
                                    | sasFormatL att > 9 = "bigint"
                                    | sasFormatL att > 4 = "integer"
                                    | otherwise = "smallint"
                               in intType
                          else "numeric("<>tshow (sasFormatL att)<>","<>tshow (sasFormatD att)<>")"
                     x -> diagnose<>tshow x
     diagnose = "TODO (aanpassing nodig in SQL.hs): "