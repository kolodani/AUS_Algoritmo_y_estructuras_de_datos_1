{-
    DEFINIR LAS SIGUIENTES FUNCIONES Y DETERMINAR SU TIPO
-}

-- 1.A) five, que dado cualquier valor devuelve 5
five :: a -> Int
five x = 5

-- 1.B) apply, que toma una funcion y un valor, y devuelve el resultado de aplicar la funcion valor dado
apply :: (a -> b) -> a -> b
apply f x = f x

-- 1.C) id, la funcion identidad
idFunction :: int -> int
idFunction x = x

-- 1.D) first, que toma un par ordenado, y devuelve su primera componente
primero :: (a, b) -> a
primero (x, y) = x

-- 1.E) derive, que aproxima la derivada de una función dada en un punto dado
derivada :: (Float -> Float) -> Float -> Float
derivada f x = (f (x + 0.0001) - f x) / 0.0001

-- 1.F) sign, la funcion signo
signo :: Int -> Int
signo x
    | x > 0 = 1
    | x < 0 = -1
    | otherwise = 0

sign :: Int -> Int
sign x = if x > 0 then 1 else if x < 0 then -1 else 0

-- 1.G) abs, la funcion valor absoluto
absoluto :: Int -> Int
absoluto x
    | x >= 0 = x
    | otherwise = -x

absoluto2 :: Int -> Int
absoluto2 x = if (signo x == 1) then x else -x

-- 1.H) pot, que toma un entero y un número, y devuelve el resultado de elevar el segundo a la
-- potencia dada por el primero

potencia :: Int -> Int -> Int
potencia x y = x ^ y

-- 1.I) xor, el operador de disyunción exclusiva
notor :: Bool -> Bool -> Bool
notor x y = (x || y) && not (x && y)

-- 1.J) max3, que toma tres números y devuelve el mayor de ellos
maximo3 :: Int -> Int -> Int -> Int
maximo3 x y z
    | x >= y && x >= z = x
    | y >= x && y >= z = y
    | otherwise = z

maximo4 :: Int -> Int -> Int -> Int
maximo4 x y z
    | x >= y = if x >= z then x else z
    | y >= z = y
    | otherwise = z

-- 1.k) swap, que toma un par y devuelve el par con sus componentes invertidas
swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)