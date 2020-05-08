{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Run (run) where

import Import
import CSV
import qualified RIO.Text as T
run :: RIO App ()
run = do
  logInfo "We're inside the application!"
  tables <- parseCsv
  logInfo $ "Number of tables: "<>displayShow (length tables)
  mapM (\t -> logDebug $ display $ showTab t) . take 30 $ tables
  return ()

showTab :: Table -> Text
showTab t = T.pack (tableName t) <>" has "<>(tshow . length . attribs) t<>" attributes."

