module Solutions.Problem001 (solution001) where

import Common

isValidNumber :: Integer -> Bool
isValidNumber x = x `mod` 3 == 0 || x `mod` 5 == 0

solution001 :: Integer
solution001 = sum (filter isValidNumber [1..1000])
