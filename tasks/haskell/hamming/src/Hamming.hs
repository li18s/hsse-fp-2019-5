module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance xs ys =
    if length xs /= length ys then Nothing
    else Just (length(filter id (zipWith (/=) xs ys)))
