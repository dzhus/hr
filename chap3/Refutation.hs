-- Ex. 3.39

module Refutation

where

import TUOLP

-- Check the conjecture for n
checkForN :: Integer -> Bool
checkForN n = prime ((product (takeWhile (<n) primes)) + 1)

-- Check if the conjecture is true (to prove it wrong, it's enough to
-- take prime n values)
conjecture = and (map checkForN primes)

-- Get first (prime) n for which the conjecture doesn't hold
counterexample = take 1 (filter (\p -> not (checkForN n)) primes)
