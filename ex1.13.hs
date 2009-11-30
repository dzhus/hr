module COUNT

where

count :: Char -> String -> Integer

count s [] = 0
count s (x:xs) | s == x = 1 + count s xs
               | otherwise = count s xs