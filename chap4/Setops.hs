-- Ex 4.54

module Setops

where

import SetEq

unionSet :: (Eq a) => Set a -> Set a -> Set a
unionSet (Set []) s2 = s2
unionSet (Set (e:s1)) s2 | inSet e s2 = unionSet (Set s1) s2
                         | otherwise =  unionSet (Set s1) (insertSet e s2)

intersectSet :: (Eq a) => Set a -> Set a -> Set a
intersectSet (Set []) s2 = Set []
intersectSet (Set (e:s1)) s2 | inSet e s2 = insertSet e (intersectSet (Set s1) s2)
                             | otherwise = intersectSet (Set s1) s2

differenceSet :: (Eq a) => Set a -> Set a -> Set a
differenceSet s1 (Set []) = s1
differenceSet s1 (Set (e:s2)) = differenceSet (deleteSet e s1) (Set s2)
