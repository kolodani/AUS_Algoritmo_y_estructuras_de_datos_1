sumaDivisores d = sum [x | x <- [1..d], mod d x == 0, x /= d]
perfectos p = [x | x <- [1..p], sumaDivisores x == x]

----------------------------------------------------------

juntar :: (Ord a) => [a] -> [a] -> [a]
juntar a [] = a
juntar [] b = b
juntar (x:xs) (y:ys) = if x <y then (x:juntar xs (y:ys)) else (y:juntar ys (x:xs))