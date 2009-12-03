-- Ex. 1.21

module SumLengths

where

sumLengths :: [[a]] -> Int

sumLengths x = sum (map length x)
