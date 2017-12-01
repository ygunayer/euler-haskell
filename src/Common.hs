{-# LANGUAGE OverloadedStrings #-}

module Common where

import qualified Formatting
import Formatting.Clock
import System.Clock
import Data.Set as Set

fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

time :: Integer -> IO Integer
time x = do
    start <- getTime Monotonic
    end <- x `seq` getTime Monotonic
    Formatting.fprint (timeSpecs Formatting.% "\n") start end
    return x

primeFactors :: Integer -> Set Integer
primeFactors x = primeFactors' 2 x Set.empty

primeFactors' :: Integer -> Integer -> Set Integer -> Set Integer
primeFactors' x n xs
    | x > n = xs
    | (n `mod` x) == 0 = primeFactors' x (n `div` x) (insert x xs)
    | otherwise = primeFactors' (x + 1) n xs

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor x = maximum (primeFactors x)
