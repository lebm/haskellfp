module GreetIfCool2 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool coolness
    then putStrLn "Cool!"
    else putStrLn "Not cool."
  where
    cool v = v == "cool"
