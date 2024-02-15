module Ex2 where

fun1 :: [Char] -> [Char]
fun1 s = s ++ "!"

fun2 :: [Char] -> [Char]
fun2 s = [s !! 4]

fun3 :: [Char] -> [Char]
fun3 = drop 9

thirdLetter :: String -> Char
thirdLetter s = s !! 2

letterIndex :: Int -> Char
letterIndex i = "The quick brown fox jumps over the lazy dog" !! i

main :: IO ()
main = do
  putStrLn (fun1 "The quick brown fox jumps over the lazy dog")
  putStrLn (fun2 "The quick brown fox jumps over the lazy dog")
  putStrLn (fun3 "The quick brown fox jumps over the lazy dog")
  putStrLn [thirdLetter "The quick brown fox jumps over the lazy dog"]
  putStrLn [letterIndex 5]
