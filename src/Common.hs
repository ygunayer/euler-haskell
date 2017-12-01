{-# LANGUAGE OverloadedStrings #-}

module Common where

import qualified Formatting
import Formatting.Clock
import System.Clock

time :: Integer -> IO Integer
time x = do
    start <- getTime Monotonic
    end <- x `seq` getTime Monotonic
    Formatting.fprint (timeSpecs Formatting.% "\n") start end
    return x
