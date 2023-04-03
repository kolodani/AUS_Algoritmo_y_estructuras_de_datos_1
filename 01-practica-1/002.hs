{-
    DAR AL MENOS DOS EJEMPLOS DE FUNCIONES QUE TENGAN CAADD UNO DE LOS SIGUIENTES TIPOS:
-}

-- 2.A) (Int -> Int) -> Int
-- ejemplo 1
sumaCincos :: (Int -> Int) -> Int
sumaCincos f = f 5

sumaDos :: Int -> Int
sumaDos x = x + 2

-- ejemplo 2
volumenCubo :: (Int -> Int) -> Int
volumenCubo f = f 3

volumen :: Int -> Int
volumen x = x ^ 3


-- 2.B) Int -> (Int -> Int)
-- ejemplo 1
suma :: Int -> (Int -> Int)
suma x y = x + y

-- ejemplo 2
potencia :: Int -> (Int -> Int)
potencia x y = x ^ y


-- 2.C) (Int -> Int) -> (Int -> Int)
-- ejemplo 1
posicion :: (Int -> Int) -> (Int -> Int)
posicion f = f

ubicacion :: Int -> Int
ubicacion x = x + 1

-- ejemplo 2
areaCuadrada :: (Int -> Int) -> (Int -> Int)
areaCuadrada f = f

area :: Int -> Int
area x = x ^ 2


-- 2.D) Int -> Bool

-- ejemplo 1
esPar :: Int -> Bool
esPar x = mod x 2 == 0

-- ejemplo 2
esMultiploDeTres :: Int -> Bool
esMultiploDeTres x = mod x 3 == 0


-- 2.E) Bool -> (Bool -> Bool)
