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



{-
e) derive, que aproxima la derivada de una función dada en un punto dado
f ) sign, la función signo
g) abs, la función valor absoluto (usando sign y sin usarla)
h) pot, que toma un entero y un número, y devuelve el resultado de elevar el segundo a la
potencia dada por el primero
i) xor, el operador de disyunción exclusiva
j) max3, que toma tres números enteros y devuelve el máximo entre ellos
k) swap, que toma un par y devuelve el par con sus componentes invertidas
-}
