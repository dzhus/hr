module MAXINT

where

maxInt :: [Int] -> Int

maxInt [] = error "Empty list"
maxInt [x] = x
maxInt (x:xs) = max x (maxInt xs)
