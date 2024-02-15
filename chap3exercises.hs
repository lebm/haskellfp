module Main where
import Distribution.CabalSpecVersion (cabalSpecMinimumLibraryVersion)

-- f1 :: String -> String
f1 = tail 

-- f2 :: String -> String
f2 = drop 1 

f3 x = x ++ "!"

-- f4 x = head $ drop 4 x
f4 x = x !! 4

f5 = drop 9

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex i = "0123456789" !! i

rvrs :: String
rvrs = awesome ++ " " ++ is ++ " " ++ curry 
    where awesome = drop 9 str
          is      = take 2 $ drop 6 str
          curry   = take 5 str
          str     = "Curry is awesome!"

main :: IO ()
main = do
  putStrLn rvrs
  putStrLn $ f1 "Hello World!"
  putStrLn $ f2 "Hello World!"
  putStrLn $ f3 "Curry is awesome"
  putChar  $ f4 "Curry is awesome"
  putStrLn $ f5 "Curry is awesome!"

  putStrLn $ f1 "abcde123456789"
  putStrLn $ f2 "abcde123456789"
  putStrLn $ f3 "abcde123456789"
  putChar  $ f4 "abcde123456789"
  putStrLn $ f5 "abcde123456789"

  putChar  $ thirdLetter "01234"
  putChar  $ letterIndex 3
  putChar  $ letterIndex 5
  putChar  $ letterIndex 0
  
