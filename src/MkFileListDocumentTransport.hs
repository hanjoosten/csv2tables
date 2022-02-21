{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module MkFileListDocumentTransport

where

import Import
import qualified RIO.Text as T
import qualified RIO.List as L
import           Data.Hashable
import RIO.Directory

mkFileListDocumentTransport :: RIO App ()
mkFileListDocumentTransport = do
    tempDir <- getTemporaryDirectory 
    logDebug . display $ "Temp directory = "<> T.pack tempDir