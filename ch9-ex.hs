module Ch9Ex where

import Data.Char
import GHC.Internal.Text.Read (Lexeme (String))

myUppers :: String -> String
myUppers = filter isUpper

myCap :: String -> String
myCap [] = []
myCap (x : xs) = toUpper x : xs

allCap :: String -> String
allCap [] = []
allCap (x : xs) = toUpper x : allCap xs

fstCap :: String -> Char
fstCap = head . myCap
