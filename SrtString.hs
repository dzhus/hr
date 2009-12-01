module SrtString

where

import RemoveFst

mnmStr :: [String] -> String

mnmStr [] = error "Empty list"
mnmStr [x] = x
mnmStr (x:xs) = min x (mnmStr xs)

srtString :: [String] -> [String]

srtString [] = []
srtString l = m : (srtString (RemoveFst.removeFst m l)) where m = mnmStr l