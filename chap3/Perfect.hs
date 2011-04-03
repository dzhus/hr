-- Ex. 3.41

module Perfect

where

import TUOLP

-- Generate divisors for 2^(n-1)*(2^n-1) where 2^n-1 is prime
eucDivisors n = [2 ^ m * (2 ^ n - 1) ^ p | p <- [0, 1], m <- [0 .. n - 1]]

-- Enjoy your halting problem
proof = all (\n -> ((sum (eucDivisors n)) == ((2 ^ n - 1) * 2 ^ n))) [1 ..]
