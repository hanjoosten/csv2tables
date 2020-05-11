{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module SQL (makeCreateStatements
           ) where

import Import
import RIO.Char
import qualified RIO.List as L
import qualified RIO.Text as T

makeCreateStatements :: [Table] -> [Text]
makeCreateStatements = concatMap createStatement

createStatement :: Table -> [Text]
createStatement t = 
      [ "DROP TABLE IF EXISTS "<> T.pack (tableName t)<>" ;"
      , "CREATE TABLE "<>T.pack (tableName t)<>" (" 
      , "    techId SERIAL PRIMARY KEY,"]
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
     comment att = T.pack $ "comment on column "<>tableName t<>"."<>attNameNew att <> " is '"<>(map toUpper $ sasLable att)<>"';"
dataType :: Attrib -> Text
dataType att =
    case sasType att of
      1 -> case T.pack (sasFormat att) of 
             "" -> case sasLength att of
                     8 -> "integer"
                     x -> "TODO "<>tshow x
             "DATETIME" -> case sasLength att of
                             8 -> "timestamp"
                             x -> "TODO: DATETIME ("<>tshow x<>")"
             x  ->  "TODO: sasformat = "<>tshow x<>" ("<>tshow (sasLength att)<>")"
      2 -> "varchar ("<>tshow (sasLength att)<>")"
      x -> "TODO. sasType == "<>tshow x
