{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Diacrieten (analyseFileNames) where

import Import

import qualified RIO.Text.Partial as T'
import qualified RIO.Text as T
import Data.Char


analyseFileNames :: RIO App ()
analyseFileNames = do
  rows <- readFileUtf8 "FilesOpTschijf.txt"
  let copyCommands = map toCopyCommand
                   . mapMaybe analyseRow
                   . T.lines 
                   . T'.tail -- quick and dirty way to strip the BOM
                   $ rows -- the stuff found in the file
      contents = T.unlines (fileHeader: copyCommands)
  writeFileUtf8 "AnalyseResultaat.txt" contents

fileHeader :: Text
fileHeader = T.unlines
      ["$folderName = 'nasturen'+(Get-Date).tostring(\"dd-MM-yyyy\")"
      ,"New-Item -ItemType Directory -Path Y:\\$FolderName"
      ]

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

toCopyCommand :: Text -> Text
toCopyCommand txt =
  "Copy-Item -Path '"
  <>(T.pack . repairSingleQuotes . T.unpack $ txt)
  <>"' -Destination Y:\\$folderName\\"
  where
    repairSingleQuotes :: String -> String
    repairSingleQuotes [] = []
    repairSingleQuotes (h:tl) = if h == '\'' 
                                then h:h:repairSingleQuotes tl 
                                else h:repairSingleQuotes tl
