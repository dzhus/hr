-- Ex. 2.53

module EvenNR

where

import Parity

evenNR :: (a -> Bool) -> [a] -> Bool
evenNR p = parity . (map p)
