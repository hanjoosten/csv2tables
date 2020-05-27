{-# LANGUAGE NoImplicitPrelude #-}
module Types where

import RIO
import RIO.Process
import RIO.Char

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
  {tableNameOrg :: !String
  ,tableNameNew :: !String
  ,attribsAll   :: [Attrib]
  } deriving Show

-- | filter is nodig omdat er een aantal attributen per abuis worden 
--   geleverd, die ook nog eens niet goed zijn in te lezen. 
attribs :: Table -> [Attrib]
attribs = filter f . attribsAll
  where f att = map toLower (attNameOrg att) /= "timestamp"
data Attrib = Attrib
    { attTableOrg :: !String
    , attTableNew :: !String
    , attNameOrg  :: !String
    , attNameNew  :: !String
    , sasType :: !Int
    , sasLength :: !Int
    , sasVarNum :: !Int
    , sasLable :: !String
    , sasFormat :: !String
    , sasFormatL :: !Int
    , sasFormatD :: !Int
    } deriving Show
instance Ord Attrib where
  compare a b = compare (attTableNew a, sasVarNum a) (attTableNew b, sasVarNum b)

instance Eq Attrib where
  a == b = compare a b == EQ