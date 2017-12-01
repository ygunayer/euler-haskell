module Main where

-- used https://github.com/guillaume-nargeot/project-euler-haskell/blob/master/src/Main.hs as a template
-- maybe use https://codeutopia.net/blog/2011/08/20/adventures-in-haskell-dynamic-loading-and-compiling-of-modules/ to load solutions dynamically?

import qualified Data.Map as Map
import Common
import Solutions.Problem001
import System.Environment (getArgs)
import System.Exit (exitSuccess)

solutions :: Map.Map Integer Integer
solutions = Map.fromList [
    (1, solution001)]

solve :: Integer -> Maybe Integer
solve x = Map.lookup x solutions

main :: IO ()
main = do
    args <- getArgs
    case args of
        ["--help"] -> usage >> exitSuccess
        ["-h"] -> usage >> exitSuccess
        [x] -> case solve (read x :: Integer) of
            Just solution -> time solution >>= print
            Nothing -> putStrLn "No such solution"
        _ -> usage >> exitSuccess
    where
        usage = putStrLn "Usage: cabal run problem [number]"
