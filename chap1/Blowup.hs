module Blowup

where

blowup :: String -> String
blowup s = blowup' s 1

repeat' :: Char -> Integer -> String
repeat' c 0 = []
repeat' c n = c : repeat' c (n - 1)

blowup' :: String -> Integer -> String
blowup' [] d = []
blowup' (x:xs) d = repeat' x d ++ blowup' xs (d + 1)
