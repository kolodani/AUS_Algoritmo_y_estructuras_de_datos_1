{-
*    8. Definir las siguientes funciones usando listas por comprensión:

?    a) divisors, que dado un entero positivo x devuelve la lista de los divisores de x (y la lista vacı́a
?       si el entero no es positivo).
?    b) matches, que dados un entero x y una lista de enteros descarta de la lista los elementos distintos a x.
?    c) unique, que dada una lista xs de enteros, devuelve la lista con los elementos no repetidos de xs.
?    d) cuadrupla, que dados cuatro enteros a, b, c y d tales que 0 < a, b, c, d, ≤ 100, devuelve las
?       cuadruplas (a, b, c, d) que cumplen a2 + b2 = c2 + d2.
-}

-- a) divisors, que dado un entero positivo x devuelve la lista de los divisores de x (y la lista vacı́a
--    si el entero no es positivo).
divisors :: Int -> [Int]
divisors x = if x > 0 then [y | y <- [1..x], x `mod` y == 0] else []

-- b) matches, que dados un entero x y una lista de enteros descarta de la lista los elementos distintos a x.
matches :: Int -> [Int] -> [Int]
matches x xs = [y | y <- xs, y == x]

-- c) unique, que dada una lista xs de enteros, devuelve la lista con los elementos no repetidos de xs.
unique :: [Int] -> [Int]
unique xs = [x | (x,y) <- zip xs [1..], not (elem x (take y xs))]



{-
?    d) cuadrupla, que dados cuatro enteros a, b, c y d tales que 0 < a, b, c, d, ≤ 100, devuelve las
?    cuadruplas (a, b, c, d) que cumplen a2 + b2 = c2 + d2.
-}