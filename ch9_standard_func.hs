module Ch9_standard_func where

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f (x : []) = x
myMaximumBy f (x : xs) = case f x mxs of
  LT -> mxs
  EQ -> x
  GT -> x
  where
    mxs = myMaximumBy f xs

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f xs = myMaximumBy (flip f) xs

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare

mySquishMap :: (a -> [b]) -> [a] -> [b]
mySquishMap f [] = []
mySquishMap f (l : ls) = f l ++ mySquishMap f ls

mySquish :: [[a]] -> [a]
mySquish [] = []
mySquish (l : ls) = l ++ mySquish ls

mySquish' :: [[a]] -> [a]
mySquish' = mySquishMap id

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x : xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x : xs) = f x || myAny f xs

myElem :: (Eq a) => a -> [a] -> Bool
myElem e [] = False
myElem e (x : xs) = e == x || myElem e xs

myElem' :: (Eq a) => a -> [a] -> Bool
myElem' e xs = myAny ((==) e) xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x : xs) = myReverse xs ++ [x]
