sumaDivisores d = sum [x | x <- [1..d], mod d x == 0, x /= d]
perfectos p = [x | x <- [1..p], sumaDivisores x == x]