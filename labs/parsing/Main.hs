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

parseMessage:: String -> MaybeLogMessage
parseMessage = str = let wds = words str in
 case head wds of
 	"I" -> let ts = read (wds !! 1) :: Int
 	           msg = Concat (drop 2 wds) in
 	"E" - > let ts 