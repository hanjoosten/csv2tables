{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Run (run) where

import Import
import CSV
import Diacrieten
import qualified RIO.Text as T
import SQL
import SASCode
import RIO.FilePath
import RIO.Directory

run :: RIO App ()
run = do
  app <- ask
  tables <- parseCsv
  logInfo $ "Number of tables: "<>displayShow (length tables)
  _ <- mapM (logDebug . display . showTab) . take 30 $ tables
  let dir = outputDir . appOptions $ app
      write :: FilePath -> ([Table] -> [Text]) -> RIO env ()
      write fileName fun = writeFileUtf8 (dir </> fileName) (T.unlines (fun tables))
  createDirectoryIfMissing True dir
  write "makeBASTables.sql"     makeCreateTableStatements
  write "dropBASTables.sql"     makeDropTableStatements
  write "tablesToCSV.sas"       tablesToCsv
  write "nonIntegerAttribs.txt"     nonIntegerAttribs
  write "modifiedNames.txt"     modifiedNames
  write "loadScript.postgress"  makeLoadScript
  analyseFileNames
showTab :: Table -> Text
showTab t = T.pack (tableNameNew t) <>" has "<>(tshow . length . attribs) t<>" attributes."

