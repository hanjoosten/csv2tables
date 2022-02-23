{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module MkFileListDocumentTransport
 (
     mkFileListDocumentTransport
 )
where

import Import
import qualified RIO.Text as T
import qualified RIO.List as L
import qualified RIO.Char as C
import RIO.Directory
import RIO.FilePath
import RIO.Time


-- Instead of Options, hard-code stuff here:
optRootFilter :: String
optRootFilter = "PRODUCTIEDOC"

logTest :: (HasLogFunc env) => Utf8Builder -> RIO env ()
logTest x = do
     logDebug x

mkFileListDocumentTransport :: RIO App ()
mkFileListDocumentTransport = do
    tempDir <- getTemporaryDirectory
    now <- getCurrentTime
    let workDir = tempDir </> "DT_"<> (showGregorian . utctDay $ now )<>"_"<>(takeWhile C.isDigit . show . utctDayTime $ now )
    logInfo . display $ "creating "<> T.pack workDir
    createDirectoryIfMissing True workDir
    payloadDirs <- getPayloadDirs
    logTest .display $ "payloadDirs: "<>tshow payloadDirs
    logInfo . display . T.pack $ "WorkDir: " <> workDir
    mapM_ (writeContents workDir) payloadDirs

writeContents :: FilePath -> FilePath -> RIO App ()
writeContents workDir fp = do
    logTest "writeContents"
    contents <- doPayloadDir fp
    logInfo . display . T.pack $ "We found " <> show (length contents) <> " files in "<>fp<>"."
    createDirectoryIfMissing True (workDir </>fp)
    let file = workDir </> fp </> "hcontent.txt"
    writeFileUtf8 file (T.unlines contents)

getRootDir :: RIO App FilePath
getRootDir = inputFile . appOptions <$> ask

getPayloadDirs :: RIO App [FilePath]
getPayloadDirs = do
    rootDir <- getRootDir
    allItemsInRoot <- listDirectory rootDir
    filterM isPayloadDir allItemsInRoot
    where isPayloadDir :: FilePath -> RIO App Bool
          isPayloadDir fp = do
            rootDir <- getRootDir
            if optRootFilter == "" || (optRootFilter `L.isPrefixOf` fp)
              then doesDirectoryExist (rootDir </> fp)
              else return False

doPayloadDir :: FilePath -> RIO App [Text]
doPayloadDir fp = do
    rootDir <- getRootDir
    let ffp = rootDir </> fp
        diepte = 2
    logTest . display $ "Start"<>tshow diepte<>" "<> T.pack ffp
    allItems <- listDirectory ffp
    logDebug .display $ "allItems: "<>tshow allItems
    dirs <- filterM doesDirectoryExist (map (ffp </>) allItems)
    logTest .display $ "dirs: "<>tshow dirs
    results <- concatMapM (doDir (diepte - 1)) dirs
    logDebug .display $ "results: "<>tshow results
    return results

doDir :: Int -> FilePath -> RIO App [Text]
doDir diepte ffp = do
    logTest . display $ "doDir"<>tshow diepte<>" "<> T.pack ffp
    allItems' <- listDirectory ffp
    let allItems = (ffp </>) <$> allItems'
    if diepte == 0
        then do
            files <- filterM doesFileExist allItems
            logTest . display $ "doDir"<>tshow diepte<>" "<> "Aantal files: "<>tshow (length files)
            return $ map T.pack files
        else do
            dirs <- filterM doesDirectoryExist allItems
            concatMapM (doDir (diepte - 1)) dirs


-- | A version of 'concatMap' that works with a monadic predicate.
concatMapM :: Monad m => (a -> m [b]) -> [a] -> m [b]
{-# INLINE concatMapM #-}
concatMapM op = foldr f (pure [])
    where f x xs = do x' <- op x; if null x' then xs else do xs' <- xs; pure $ x'++xs'