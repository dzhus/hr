-- Ex. 1.17

module Substring

where

import GS

substring :: String -> String -> Bool
substring [] ys = True
substring xs [] = False
substring xs (y:ys) | GS.prefix xs (y:ys) = True
                    | otherwise = substring xs ys
