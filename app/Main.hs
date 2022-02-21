{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
module Main (main) where

import Import
import Run
import RIO.Process
import Options.Applicative.Simple
-- import qualified Paths_csv2tables

main :: IO ()
main = do
  (options, ()) <- simpleOptions
    "0.1.0.0" --  $(simpleVersion Paths_csv2tables.version)
    "This is a custom utility to create sql create table statements from a specific .xlsx file."
    "Bla bla"
    (Options
       <$> switch ( long "verbose"
                 <> short 'v'
                 <> help "Verbose output?"
                  )
       <*> strOption ( long "input"
                 <> short 'i'
                 <> help "Path to the input .csv file"
                 <> value  "Basinfo.csv"
                  )
       <*> strOption ( long "outputDir"
                 <> short 'o'
                 <> help "Path to write output files"
                 <> value  "migratieScripts"
                  )
           
    )
    empty
  lo <- logOptionsHandle stderr (optionsVerbose options)
  pc <- mkDefaultProcessContext
  withLogFunc lo $ \lf ->
    let app = App
          { appLogFunc = lf
          , appProcessContext = pc
          , appOptions = options
          }
     in runRIO app runSASStuff

