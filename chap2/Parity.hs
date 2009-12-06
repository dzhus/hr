-- Ex. 2.52

module Parity

where

import TAMO

parity :: [Bool] -> Bool

parity = even . length . (filter id)
