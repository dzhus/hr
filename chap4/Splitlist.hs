-- Ex. 4.47

module Splitlist

where

splitList :: [a] -> [([a], [a])]

splitList (x:y:xs) = resplit [([x], y:xs)]

-- Append to [([1 .. k], [k+1 .. n])] a new element ([1 .. k+1], [k+2 .. n])
resplit [(p1, (p2a:p2b:p2s))] = [(p1, p2a:p2b:p2s)] ++ resplit [(p1 ++ [p2a], p2b:p2s)]
resplit [(x:xs, [y])] = [(x:xs, [y])]
