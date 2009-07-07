module REMOVEFST

where

removeFst :: Int -> [Int] -> [Int]

removeFst x [] = []
removeFst x (y:xs) | x == y = xs
                   | otherwise = y : removeFst x xs
