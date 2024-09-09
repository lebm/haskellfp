module WriteInstances where

data DayOfWeek
  = Mon
  | Tue
  | Wed
  | Thu
  | Fri
  | Sat
  | Sun
  deriving (Ord, Show)

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Wed Wed = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _ = False

data Date = Date DayOfWeek Int deriving (Ord, Show)

instance Eq Date where
  (==)
    (Date weekday dayOfMonth)
    (Date weekday' dayOfMonth') =
      weekday == weekday' && dayOfMonth == dayOfMonth'

data DoW
  = S
  | T
  | Q
  | U
  | X
  | B
  | D
  deriving (Eq, Show)

instance Ord DoW where
  compare X X = EQ
  compare X _ = GT
  compare _ X = LT
  compare _ _ = EQ
