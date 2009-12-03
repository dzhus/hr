-- Ex. 2.21
-- 
-- 1. P ==> not Q
--
-- 2. Truth table for N-ary formula contains 2^N rows. Thus, there are
--    2 ^ (2 ^ 2) truth tables for 2-letter formulas altogether.
--
-- 3. Yep.
--
-- 4. Here it is:

module Generate

where

import TAMO

type LogFunBinary = (Bool -> Bool -> Bool)

-- Generate a 2-letter formula with given truth table. Truth table is
-- provided as a 4-tuple of formula values for different argument
-- lists, from (True,True) to (False,False) (that's the order used for
-- truth tables in the book)
-- TODO: Check length of truth table
makeBinary :: [Bool] -> LogFunBinary
makeBinary values = (\ p q ->  
                     let
                         args = [(fp p) && (fq q) | 
                                 fp <- [id, not],
                                 fq <- [id, not]]
                     in
                       or (map (uncurry (&&)) (zip values args)))


-- Usage example:

test1 = logEquiv2 (<+>) (makeBinary [False, True, True, False])
test2 = logEquiv2 (==>) (makeBinary [True, False, True, True])
test3 = logEquiv2 (==>) (makeBinary [True, False, True, True])

-- 5. makeBinary may be generalized for producing N-ary functions.
