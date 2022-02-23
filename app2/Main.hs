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
    "0.1.0.0" 
    "This is a custom utility to create a list of files involved in migration"
    "Bla bla"
    (Options
       <$> switch ( long "verbose"
                 <> short 'v'
                 <> help "Verbose output?"
                  )
       <*> strOption ( long "mainDir"
                 <> short 'i'
                 <> help "The root directory into which the BAS files reside."
                 <> value  "Y:\\"
                  )
       <*> strOption ( long "outputDir"
                 <> short 'o'
                 <> help "Path to write output files"
                 <> value  "logbestanden documenttransport"
                  )
    )
    empty
  logOptions' <- logOptionsHandle stderr (optionsVerbose options)
  let logOptions = setLogUseTime True logOptions'
  let logOptions =
        setLogUseColor False
          . setLogUseTime True
       --   . setLogMinLevel (globalLogLevel go)
          . setLogVerboseFormat True
       --   . setLogTerminal (globalTerminal go)
          $ logOptions'
  pc <- mkDefaultProcessContext
  withLogFunc logOptions $ \lf ->
    let app = App
          { appLogFunc = lf
          , appProcessContext = pc
          , appOptions = options
          }
     in runRIO app mkFileList

