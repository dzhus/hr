-- Ex. 1.10

module RemoveFst

where

-- We use type scheme instead of explicit [Int]
-- List elements must carry an equality function
removeFst :: Eq a => a -> [a] -> [a]

removeFst x [] = []
removeFst x (y:ys) | x == y = ys
                   | otherwise = y : removeFst x ys
