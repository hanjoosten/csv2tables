{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module CSV (parseCsv) where

import Import
import Text.CSV

import qualified RIO.List as L
import qualified RIO.Map as Map
import qualified RIO.NonEmpty as NE
import qualified RIO.Text as T



parseCsv :: RIO App [Table]
parseCsv = do
  env <- ask
  let fileName = inputFile . appOptions $ env
  logDebug $ "Start reading "<>displayShow fileName
  contents <- liftIO $ parseCSVFromFile fileName
  case contents of 
      Left err -> fatal $ "Parse error!\n" <> tshow err
      Right x  -> return $ toTables x



toTables :: [Record] -> [Table]
toTables x = case x of 
    [] -> fatal $ "No header row found!"
    h:tl -> map mkTable $ groups atts
       where 
         atts = map mkAttrib . filter isEmptie . map keyVals $ tl
         keyVals :: Record -> KeyValues
         keyVals rs = Map.fromList $ zip h rs
         groups :: [Attrib] -> [[Attrib]]
         groups [] = []
         groups (y:ys) = (y:same) : groups others 
           where (same,others) = L.partition (eql y) ys
                 eql a b = attTable a == attTable b
type KeyValues = Map String String

mkTable :: [Attrib] -> Table
mkTable atts = case NE.groupWith attTable atts of
   [] -> fatal $ "No attributes"
   [x] ->  Table
      {tableName = attTable (NE.head x)
      ,attribs   = atts
      }
   _ -> fatal $ "Multiple tables. Only attributes of a single table expected"

isEmptie :: KeyValues -> Bool
isEmptie = isJust . Map.lookup "MEMNAME"  

mkAttrib :: KeyValues -> Attrib
mkAttrib kvs = -- trace (T.take 80 $ tshow kvs) $
   Attrib
    { attTable = lkpStr "MEMNAME"
    , attNameOrg  = rawAttName -- :: !String
    , attNameNew  = makeSafe rawAttName
    , sasType = lkpInt "TYPE" -- :: !Int
    , sasLength = lkpInt "LENGTH" -- :: !Int
    , sasVarNum = lkpInt "VARNUM" -- :: !Int
    , sasLable = lkpStr "LABEL" -- :: !String
    , sasFormat = lkpStr "FORMAT" -- :: !String
    } 
   where rawAttName = lkpStr "NAME"
         makeSafe :: String -> String
         makeSafe = substitute "," ""
                  . substitute "." ""
                  . substitute "-" "_"
                  . substitute "VVG." "VVG_"
         lkpStr :: String -> String
         lkpStr key = fromMaybe err $ Map.lookup key kvs
            where err =fatal $ "String is missing. (key = "<>T.pack key<>")." 
         lkpInt :: String -> Integer
         lkpInt key = fromMaybe err $ readMaybe $ lkpStr key
            where err =fatal $ "Value is not an integer."

-- | Replace each occurrence of one sublist in a list with another.
substitute :: (Eq a) => [a] -> [a] -> [a] -> [a]
substitute _ _ [] = []
substitute [] _ xs = xs
substitute target replacement lst@(x:xs) =
    case L.stripPrefix target lst of
      Just lst' -> replacement ++ substitute target replacement lst'
      Nothing   -> x : substitute target replacement xs

