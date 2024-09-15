module Ch9Ex where

isArticle :: String -> Bool
isArticle s =
  case s of
    "the" -> False
    "a" -> False
    "an" -> False
    otherwise -> True

myFilter :: String -> [String]
myFilter s = filter isArticle $ words s
