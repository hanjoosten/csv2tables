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


-- | Directory where the results of the file-list is being stored
targetDirectory :: RIO App FilePath
targetDirectory = do
    homeDir <- getHomeDirectory
    let resultsDir = homeDir </> "MigratieDocTransportInfo"
    createDirectoryIfMissing False resultsDir
    return resultsDir
-- | Root directory where the payload directories reside
sourceDirectory :: RIO App FilePath
sourceDirectory = inputFile . appOptions <$> ask


mkFileListDocumentTransport :: RIO App ()
mkFileListDocumentTransport = do
    logInfo "Start creating list of files involved in migration."
    target <- targetDirectory
    source <- sourceDirectory
    logInfo . display $ "Creating list of files that are in "<> T.pack (source </> optRootFilter<>"*" )
    logInfo . display $ "Results are written into "<> T.pack target
    payloadDirs <- getPayloadDirs
    results <- mapM doSinglePayloadDir (L.sort payloadDirs)
    now <- getCurrentTime
    let totalContentFile = target </> "FilesOpTschijf_"<> (showGregorian . utctDay $ now )<>"_"<>(takeWhile C.isDigit . show . utctDayTime $ now )
    let filesOpTSchijf = target </> "FilesOpTschijf" <.> "txt"
    logInfo . display $ "Done reading info. Now writing file to disk: " <> T.pack totalContentFile
    let sortedContent = T.unlines . L.sort . concatMap snd $ results
    writeFileUtf8 totalContentFile sortedContent -- file for this specific run

    exists <- doesFileExist filesOpTSchijf
    when exists (removeFile filesOpTSchijf)
    writeFileUtf8 filesOpTSchijf sortedContent -- overwrite existing file for each run 

    logInfo "End creating list of files involved in migration."

doSinglePayloadDir :: FilePath -> RIO App (Int,[Text])
doSinglePayloadDir fp = do
    target <- targetDirectory
    let specificTarget = target </> fp
        proofOfWork = specificTarget </> "harvestedOK.proof"
        contentOfDirFile = specificTarget </> ("contentsOf_"<>fp) <.> "txt"
    createDirectoryIfMissing False specificTarget
    fullyDoneBefore <- doesFileExist proofOfWork
    if fullyDoneBefore
        then do
            contents <- readFileUtf8 contentOfDirFile -- This must exist. just crash if it doesn't
            let fileCount = length . T.lines $ contents
            logInfo . display $ T.pack fp <>" contains "<>tshow fileCount<> " files."
            return (fileCount,T.lines contents)
        else do
            failedBefore <- doesFileExist contentOfDirFile
            when failedBefore $ removeFile contentOfDirFile
            contents <- harvestPayloadDir fp
            let numberOfFiles = length contents
            logInfo . display $ T.pack fp <>" contains "<> tshow numberOfFiles <> " files."
            writeFileUtf8 contentOfDirFile (T.unlines contents)
            now <- getCurrentTime
            source <- sourceDirectory
            writeFileUtf8 proofOfWork . T.unlines $
               ["Directory inhoud van: "<> T.pack (source </> fp)
               ,"Aantal aangetroffen bestanden: "<> tshow numberOfFiles
               ,"Tijdstip: "<> formatW3 now
               ]
            return (numberOfFiles,contents)

getPayloadDirs :: RIO App [FilePath]
getPayloadDirs = do
    rootDir <- sourceDirectory
    allItemsInRoot <- listDirectory rootDir
    filterM isPayloadDir allItemsInRoot
    where isPayloadDir :: FilePath -> RIO App Bool
          isPayloadDir fp = do
            rootDir <- sourceDirectory
            if optRootFilter == "" || (optRootFilter `L.isPrefixOf` fp)
              then doesDirectoryExist (rootDir </> fp)
              else return False

harvestPayloadDir :: FilePath -> RIO App [Text]
harvestPayloadDir fp = do
    rootDir <- sourceDirectory
    let ffp = rootDir </> fp
        diepte = 2
    allItems <- listDirectory ffp
    logDebug .display $ "allItems: "<>tshow allItems
    dirs <- filterM doesDirectoryExist (map (ffp </>) allItems)
    results <- concatMapM (doDir (diepte - 1)) dirs
    logDebug .display $ "results: "<>tshow results
    return results

doDir :: Int -> FilePath -> RIO App [Text]
doDir diepte ffp = do
    allItems' <- listDirectory ffp
    let allItems = (ffp </>) <$> allItems'
    if diepte == 0
        then do
            files <- filterM doesFileExist allItems
            return $ map T.pack files
        else do
            dirs <- filterM doesDirectoryExist allItems
            concatMapM (doDir (diepte - 1)) dirs


-- | A version of 'concatMap' that works with a monadic predicate.
concatMapM :: Monad m => (a -> m [b]) -> [a] -> m [b]
{-# INLINE concatMapM #-}
concatMapM op = foldr f (pure [])
    where f x xs = do x' <- op x; if null x' then xs else do xs' <- xs; pure $ x'++xs'

-- | Format a 'UTCTime' in W3 format.
formatW3 :: UTCTime -> T.Text
formatW3 = T.pack . formatTime defaultTimeLocale "%FT%X-00:00"