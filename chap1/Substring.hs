module Substring

where

prefix :: String -> String -> Bool
prefix [] ys = True
prefix (x:xs) [] = False
prefix (x:xs) (y:ys) = (x==y) && prefix xs ys 

substring :: String -> String -> Bool
substring [] ys = True
substring xs [] = False
substring xs (y:ys) | prefix xs (y:ys) = True
                    | otherwise = substring xs ys