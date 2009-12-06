module Unique

where

import TAMO

unique :: (a -> Bool) -> [a] -> Bool

unique p [] = True
unique p (x:xs) | p x = not (some xs p)
                | otherwise = unique p xs
