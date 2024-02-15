module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool
    then putStrLn "Cool!"
    else putStrLn "Not cool."
  where
    cool = coolness == "cool"
