#!/bin/bash

# This script fetches Haskell modules for every chapter and puts them
# in respective `chapN` directories.

URL_BASE=http://www.cwi.nl/~jve/rcrh/

function fetch ()
{
    wget -N -P $2 ${URL_BASE}$1
}

fetch GS.hs chap1
fetch TAMO.hs chap2
