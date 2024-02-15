sayHello :: String -> IO ()
sayHello x = 
  putStrLn("Hello, " ++ x ++ "!")

-- Funções começam com minúsculas.
-- Pode ser camel case, mas tem que começar com minúsculas
triple x = x * 3

half x = x / 2
square x = (*) x x

circleArea r = 3.14 * square r

circleArea2 radius = 3.14 * (\r -> r * r) radius

circleArea3 radius = pi * (\r -> (*) r r) radius

perimeter1 x y = (x * 2) + (y * 2)
perimeter2 x y = x * 2 + y * 2

f1 x = x / 2 + 9
f2 x = x / (2 + 9)
