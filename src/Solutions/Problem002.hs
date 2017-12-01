module Solutions.Problem002 (solution002) where

import Common

sumTill :: Integer -> Integer
sumTill limit = sum (filter even (takeWhile (<limit) fibs))

solution002 :: Integer
solution002 = sumTill 4000000
