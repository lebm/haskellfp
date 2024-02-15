module Examples where

myNum :: Integer
myNum = 1

-- myVal does nothing to f. It does not
-- depend on f, so f is maximum polymorphic.
myVal f = myNum

-- myNum is Integer. myVal2 sums myNum to f, so f must
-- be integer. (type inferred)
myVal2 f = myNum + f

-- All px parameters can be of different types, nothing in
-- the function restricts their types. The inference infers
-- the most polymorphic type that works.
myFunc :: p1 -> p2 -> p3 -> p4 -> Integer
myFunc a b c d = myNum