{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module XLSX (parseXLSX) where

import Import
import qualified RIO.ByteString.Lazy as L
import           Codec.Xlsx
-- import           Control.Lens hiding (both) -- ((^?),ix)
-- import           Data.Tuple.Extra
import qualified RIO.ByteString as B
import qualified RIO.ByteString.Lazy as BL
import           RIO.Char
import qualified RIO.List as L
import qualified RIO.Map as Map
import qualified RIO.Text as T
import Util
run :: RIO App ()
run = do
  logInfo "We're inside the application!"
  xlsx <- parseXLSX
  return ()

parseXLSX :: RIO App Xlsx
parseXLSX =
  do env <- ask
     let inp = inputFile . appOptions $ env
     bytestr <- liftIO $ B.readFile inp
     return . toXlsx . BL.fromStrict $ bytestr

xlsx2records :: Xlsx -> a
xlsx2records x = undefined
  where
    worksheets = (x ^. xlSheets)
    theWorkSheet :: Worksheet
    theWorkSheet = case x ^. xlSheets of
          []  -> fatal "No worksheet found"
          h:_ -> snd h


--  where
--   xlsx2pContext :: (HasFSpecGenOpts env) 
--       => env -> Xlsx -> Guarded [P_Population]
--   xlsx2pContext env xlsx = Checked pop []
--     where 
--       pop = concatMap (toPops env file)
--           . concatMap theSheetCellsForTable 
--           $ (xlsx ^. xlSheets)
