{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Run (runSASStuff, mkFileList) where

import Import
import CSV
import Diacrieten
import qualified RIO.Text as T
import SQL
import SASCode
import RIO.FilePath
import RIO.Directory
import MkFileListDocumentTransport (mkFileListDocumentTransport)

runSASStuff :: RIO App ()
runSASStuff = do
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

mkFileList :: RIO App ()
mkFileList = do
  logInfo "Start creating list of files involved in migration."
  mkFileListDocumentTransport
  logInfo "End creating list of files involved in migration."

 