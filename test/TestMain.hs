module Main where

import System.Exit (exitFailure, exitSuccess)
import Test.HUnit
import Common
import Data.Set as Set

testPrimeFactors = "primeFactors" ~: [
    primeFactors 6 @?= Set.fromAscList [2, 3],
    primeFactors 12 @?= Set.fromAscList [2, 3],
    primeFactors 21 @?= Set.fromAscList [3, 7]]

testLargestPrimeFactor = "largestPrimeFactor" ~: [
    largestPrimeFactor 2 @?= 2,
    largestPrimeFactor 21 @?= 7]

allTests :: [Test]
allTests = [
    testPrimeFactors,
    testLargestPrimeFactor]

main :: IO Counts
main =do
    cnt <- runTestTT (test allTests)
    if errors cnt + failures cnt == 0
        then exitSuccess
    else exitFailure
