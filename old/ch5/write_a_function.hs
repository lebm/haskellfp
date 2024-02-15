module WriteAFunction where

i :: a -> a
i x = x

c :: a -> b -> a
c a _ = a

c'' :: b -> a -> b
c'' b _ = b

r :: [a] -> [a]
r x = x

r' :: [a] -> [a]
r' = tail

co :: (b -> c) -> (a -> b) -> a -> c
co bc ab a = bc $ ab $ a