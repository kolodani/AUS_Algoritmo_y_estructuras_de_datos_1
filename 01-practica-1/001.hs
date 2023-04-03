{-
1. Definir las siguientes funciones y determinar su tipo:
-}
-- a) five, que dado cualquier valor, devuelve 5
five :: Int -> Int
five x = 5

-- b) apply, que toma una función y un valor, y devuelve el resultado de aplicar la funciónal valor dado
apply :: (t1 -> t2) -> t1 -> t2
apply f x = f x

-- c) id, la función identidad
iden :: Int -> Int
iden x = x

-- d) first, que toma un par ordenado, y devuelve su primera componente
first :: (Int, Int) -> Int
first (x , y) = x

-- e) derive, que aproxima la derivada de una función dada en un punto dado
derive :: (Double -> Double) -> Double -> Double
derive f x = (f (x + 0.0001) - f x) / 0.0001

-- f ) sign, la función signo
sign :: Int -> Char
sign x
    |x > 0 = '+'
    |x < 0 = '-'
    |otherwise = '0'

-- g) abs, la función valor absoluto (usando sign y sin usarla)
-- con usar sign
absCon :: (Int -> Char) -> Int -> Int
absCon f x
    |f x == '+' = x
    |f x == '-' = -x
    |otherwise = 0

-- sin usar sign
absSin :: Int -> Int
absSin x
    |x > 0 = x
    |x < 0 = -x
    |otherwise = 0

-- h) pot, que toma un entero y un número, y devuelve el resultado de elevar el segundo a la
-- potencia dada por el primero
pot :: Int -> Int -> Int
pot x y = y ^ x

-- i) xor, el operador de disyunción exclusiva
xor :: Bool -> Bool -> Bool
xor a b
    |a == b = False
    |otherwise = True

-- j) max3, que toma tres números enteros y devuelve el máximo entre ellos
max3 :: Int -> Int -> Int -> Int
max3 x y z
    |x > y && x > z = x
    |y > x && y > z = y
    |otherwise = z

-- opcion B
max2 :: Int -> Int -> Int
max2 x y
    |x > y = x
    |otherwise = y

max3B :: Int -> Int -> Int -> Int
max3B x y z
    |max2 x y > z = max2 x y
    |otherwise = z

-- k) swap, que toma un par y devuelve el par con sus componentes invertidas
swap :: (Int, Int) -> (Int, Int)
swap (x , y) = (y , x)