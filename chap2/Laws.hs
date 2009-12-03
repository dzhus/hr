-- Ex. 2.13

module Laws

where

import TAMO

fTrue p = True
fFalse p = False

test1a = logEquiv1 (\ p -> not True) fFalse
test1b = logEquiv1 (\ p -> not False) fTrue
test2 = logEquiv1 (\ p -> p ==> False) not
test3a = logEquiv1 (\ p -> p || True) fTrue
test3b = logEquiv1 (\ p -> p && False) fFalse
test4a = logEquiv1 (\ p -> p || False) id
test4b = logEquiv1 (\ p -> p && True) id
test5 = logEquiv1 (\ p -> p || not p) fTrue
test6 = logEquiv1 (\ p -> p && not p) fFalse
