{-# LANGUAGE NoImplicitPrelude #-}
module Types where

import RIO
import RIO.Process

-- | Command line arguments
data Options = Options
  { optionsVerbose :: !Bool
  , inputFile :: !FilePath
  , outputDir :: !FilePath
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
    , attNameOrg  :: !String
    , attNameNew  :: !String
    , sasType :: !Integer
    , sasLength :: !Integer
    , sasVarNum :: !Integer
    , sasLable :: !String
    , sasFormat :: !String
    } deriving Show
instance Ord Attrib where
  compare a b = compare (attTable a, sasVarNum a) (attTable b, sasVarNum b)

instance Eq Attrib where
  a == b = attTable a == attTable b 
        && attNameOrg a  == attNameOrg b