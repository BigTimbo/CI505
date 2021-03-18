module Main where

import System.IO
import Log


------------------------------
-- Main function does nothing
------------------------------
main :: IO ()
main = putStrLn ""
          
readLogFile :: FilePath -> IO [String]
readLogFile fpath = do 
	str <- readFile fpath
	return (lines str)