-- Ex. 4.51

module Difference

where

listDiff [] _ = []
listDiff (x:xs) y | elem x y = listDiff xs y
                  | otherwise = x : (listDiff xs y)