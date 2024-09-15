module Ch9337 where

myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x : xs) (y : ys) = (x, y) : myZip xs ys

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f [] _ = []
myZipWith f _ [] = []
myZipWith f (x : xs) (y : ys) = f x y : myZipWith f xs ys

myZip2 :: [a] -> [b] -> [(a, b)]
myZip2 xs ys = myZipWith (\x y -> (x, y)) xs ys
