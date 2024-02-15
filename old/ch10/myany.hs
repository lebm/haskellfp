myAny :: Foldable t1 => (t2 -> Bool) -> t1 t2 -> Bool
myAny f xs = 
    foldr (\x b -> f x || b) False xs

