{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Diacrieten (analyseFileNames) where

import Import

import qualified RIO.Text as T
import Data.Char


analyseFileNames :: RIO App ()
analyseFileNames = do
  rows <- readFileUtf8 "FilesOpTschijf.txt"
  writeFileUtf8 "AnalyseResultaat.txt" (T.unlines . mapMaybe analyseRow . T.lines $ rows)

analyseRow :: Text -> Maybe Text
analyseRow row
  | all isAscii (T.unpack row) = Nothing
  | isASdocument (T.unpack row) = Just row
  | otherwise = Nothing
  where
      isASdocument :: String -> Bool
      isASdocument ('\\' : 'A' : 'S' : _) = True
      isASdocument [] = False
      isASdocument (_ : tl) = isASdocument tl