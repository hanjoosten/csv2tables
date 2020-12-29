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
    [] -> fatal "No header row found!"
    h:tl -> filter doMigrate . map mkTable $ groups atts
       where 
         atts = map mkAttrib . filter isEmptie . map keyVals $ tl
         keyVals :: Record -> KeyValues
         keyVals rs = Map.fromList $ zip h rs
         groups :: [Attrib] -> [[Attrib]]
         groups [] = []
         groups (y:ys) = (y:same) : groups others 
           where (same,others) = L.partition (eql y) ys
                 eql a b = attTableNew a == attTableNew b
         doMigrate :: Table -> Bool
         doMigrate t = tableNameNew t /= "BAS_DAR_COR_BERICHT_BIJLAGE"
            
type KeyValues = Map String String

mkTable :: [Attrib] -> Table
mkTable atts = case NE.groupWith attTableNew atts of
   [] -> fatal "No attributes"
   [x] ->  Table
      {tableNameOrg = attTableOrg (NE.head x)
      ,tableNameNew = attTableNew (NE.head x)
      ,attribsAll   = atts
      }
   _ -> fatal "Multiple tables. Only attributes of a single table expected"

isEmptie :: KeyValues -> Bool
isEmptie = isJust . Map.lookup "MEMNAME"  

mkAttrib :: KeyValues -> Attrib
mkAttrib kvs = -- trace (T.take 80 $ tshow kvs) $
   Attrib
    { attTableOrg = rawTableName
    , attTableNew = alterTableName rawTableName
    , attNameOrg  = rawAttName -- :: !String
    , attNameNew  = makeSafe rawAttName
    , sasType = lkpInt "TYPE" -- :: !Int
    , sasLength = lkpInt "LENGTH" -- :: !Int
    , sasVarNum = lkpInt "VARNUM" -- :: !Int
    , sasLable = lkpStr "LABEL" -- :: !String
    , sasFormat = lkpStr "FORMAT" -- :: !String
    , sasFormatD = lkpInt "FORMATD"
    , sasFormatL = lkpInt "FORMATL"
    } 
   where rawTableName = lkpStr "MEMNAME"
         alterTableName str = 
            -- In rijkszaak gaan we de tabellen voorzien van een prefix. 
            -- om te voorkomen dat de tabelnaam te lang wordt, slopen we de
            -- suffix er van af. Die is namelijk in alle gevallen "_TCMG"
            case L.stripSuffix "_TCMG" str of
                Nothing -> if length (pFix <> str) <= 32
                           then pFix <> str
                           else fatal $ "Deze tabelnaam kan niet worden "
                                      <>"voorzien van een prefix, omdat het "
                                      <>"anders te lange wordt: "<>T.pack str 
                Just x  -> pFix <> x
              where pFix = "BAS_"
         rawAttName = lkpStr "NAME"
         makeSafe :: String -> String
         makeSafe attstr 
          | rawTableName == "VKM_VAR_GEGEVENS_TCMG" && rawAttName `elem` ["VKM_VAR_GEGEVENS_DOS", "VKM_VAR_GEGEVENS_PRG", "VKT_ID", "DOS_ID"] = "VVG_"<>attstr
          | otherwise =
                    substitute "," ""
                  . substitute "." ""
                  . substitute "-" "_"
                  . substitute "VVG." "VVG_" $ attstr
         lkpStr :: String -> String
         lkpStr key = fromMaybe err $ Map.lookup key kvs
            where err =fatal $ "String is missing. (key = "<>T.pack key<>")." 
         lkpInt :: String -> Int
         lkpInt key = fromMaybe err $ readMaybe $ lkpStr key
            where err =fatal "Value is not an integer."

-- | Replace each occurrence of one sublist in a list with another.
substitute :: (Eq a) => [a] -> [a] -> [a] -> [a]
substitute _ _ [] = []
substitute [] _ xs = xs
substitute target replacement lst@(x:xs) =
    case L.stripPrefix target lst of
      Just lst' -> replacement ++ substitute target replacement lst'
      Nothing   -> x : substitute target replacement xs

