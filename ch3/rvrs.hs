module Rvrs where

rvrs :: [Char]
rvrs = a ++ " " ++ i ++ " " ++ c
  where
    s = "Curry is awesome"
    c = take 5 s
    i = take 2 (drop 6 s)
    a = tail (drop 8 s)

main :: IO ()
main = do
  putStrLn rvrs