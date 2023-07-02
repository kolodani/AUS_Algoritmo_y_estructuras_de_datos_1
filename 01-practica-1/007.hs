{-
*    7. El producto escalar de dos listas de enteros de igual longitud es la suma de los productos de
*    los elementos sucesivos (misma posición) de ambas listas. Usando listas por comprensión defina
*    una función scalarproduct que devuelva el producto escalar de dos listas.
!    Sugerencia: Usar las funciones zip y sum.
?    • zip [1,2,3] [4,5,6] = [(1,4),(2,5),(3,6)]
?    • sum [1,2,3] = 6
-}

scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x*y | (x,y) <- zip xs ys]