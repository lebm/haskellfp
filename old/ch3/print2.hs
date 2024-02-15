module Print2 where

import System.Posix.Internals (puts)

main :: IO ()
main = do
  putStrLn "Count to four:"
  putStr "one, two"
  putStr ", three, and"
  putStrLn " four!"