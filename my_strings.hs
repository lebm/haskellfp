module MyStrings where

myString :: (Eq a) => [a] -> a -> [[a]]
myString s c = go s []
  where
    go s xs
      | null s = xs
      | otherwise =
          go
            (drop 1 (dropWhile (/= c) s))
            (xs ++ [takeWhile (/= c) s])
