{-# LANGUAGE NoImplicitPrelude #-}
module Types where

import RIO
import RIO.Process

-- | Command line arguments
data Options = Options
  { optionsVerbose :: !Bool
  , inputFile :: !FilePath
  , outputFile :: !FilePath
  }

data App = App
  { appLogFunc :: !LogFunc
  , appProcessContext :: !ProcessContext
  , appOptions :: !Options
  -- Add other app-specific configuration information here
  }

instance HasLogFunc App where
  logFuncL = lens appLogFunc (\x y -> x { appLogFunc = y })
instance HasProcessContext App where
  processContextL = lens appProcessContext (\x y -> x { appProcessContext = y })

data Table = Table
  {tableName :: !String
  ,attribs   :: [Attrib]
  } deriving Show

data Attrib = Attrib
    { attTable :: !String
    , attName  :: !String
    , sasType :: !Integer
    , sasLength :: !Integer
    , sasVarNum :: !Integer
    , sasLable :: !String
    , sasFormat :: !String
    } deriving Show

instance Eq Attrib where
  a == b = attTable a == attTable b 
        && attName a  == attName b