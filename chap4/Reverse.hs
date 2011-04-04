-- Ex. 4.46

module Reverse

where

myReverse :: [a] -> [a]

myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]
