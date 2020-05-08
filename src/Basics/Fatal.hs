{-# LANGUAGE ImplicitParams #-}
{-# LANGUAGE OverloadedStrings #-}
-- | This module contains Version of Ampersand
module Basics.Fatal 
       ( fatal
       ) where
import           Basics.Exit
import           Basics.Prelude
import           GHC.Stack
import qualified RIO.Text as T

maxLen :: Int
maxLen = 1500000 -- This trick is to make sure the process is terminated after the error.
                  -- If the string is too long, it seems that the sentinel `hangs`.
                  -- But what is too long???

-- | a function to create error message in a structured way.
--   It throws an error, showing a (module)name and a number. This makes debugging pretty easy.
fatal :: (HasCallStack) => Text -> a
fatal msg
 = exitWith . Fatal . T.lines $
        ( lazyCutoff maxLen msg<>"\n"<>
          (T.pack $ prettyCallStack callStack)
        )
 where lazyCutoff n txt = case T.uncons txt of
          Nothing -> mempty
          Just (h,tl) 
            | T.null tl -> mempty
            | n == 0 -> "\n<Fatal-mechanism has removed the rest of this error message.>"
            | otherwise -> T.cons h (lazyCutoff (n-1) tl)

{-# NOINLINE fatal #-}

