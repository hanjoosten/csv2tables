{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Run (run) where

import Import
import CSV
import qualified RIO.Text as T
import SQL
import SASCode

run :: RIO App ()
run = do
  app <- ask
  tables <- parseCsv
  logInfo $ "Number of tables: "<>displayShow (length tables)
  _ <- mapM (\t -> logDebug $ display $ showTab t) . take 30 $ tables
  let sqlStatements = T.unlines $ makeCreateStatements tables
  writeFileUtf8 (outputFile . appOptions $ app) sqlStatements
  let sasCodeTablesToCSV = T.unlines $ tablesToCsv tables
  writeFileUtf8 "tablesToCSV.sas" sasCodeTablesToCSV

showTab :: Table -> Text
showTab t = T.pack (tableName t) <>" has "<>(tshow . length . attribs) t<>" attributes."

