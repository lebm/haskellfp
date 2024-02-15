module Reverse where

rvrs :: String -> String
rvrs str = awesome ++ " " ++ is ++ " " ++ curry 
      where awesome = drop 9 str
            is      = take 2 $ drop 6 str
            curry   = take 5 str

main :: IO ()
main = print $ rvrs "Curry is awesome!"
