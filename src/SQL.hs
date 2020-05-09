{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module SQL (makeCreateStatements) where

import Import
import qualified RIO.Text as T
import qualified RIO.List as L

makeCreateStatements :: [Table] -> [Text]
makeCreateStatements = concatMap createStatement

createStatement :: Table -> [Text]
createStatement t = 
      [ "DROP TABLE IF EXISTS "<> T.pack (tableName t)<>" ;"
      , "CREATE TABLE "<>T.pack (tableName t)<>" (" ]
   <> T.lines cols 
   <> [ ");"
      , ""
      ]
   where
     cols = "    "<> (T.intercalate ",\n    " . map mkCol . L.sort . attribs) t
     mkCol :: Attrib -> Text
     mkCol att = 
          T.pack (attNameNew att)<> " "<>dataType att

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
