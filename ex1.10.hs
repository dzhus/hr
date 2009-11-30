module REMOVEFST

where

removeFst :: Int -> [Int] -> [Int]

removeFst x [] = []
removeFst x (y:ys) | x == y = ys
                   | otherwise = y : removeFst x ys
