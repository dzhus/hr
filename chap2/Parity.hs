module Parity

where

import TAMO

parity :: [Bool] -> Bool

parity = even . length . (filter id)
