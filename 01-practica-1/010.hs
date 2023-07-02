{-
*    10.
?    a) Definir las operaciones de suma y producto módulo 2 para el tipo data DigBin = Cero |Uno
?    b) Definir las operaciones de suma binaria, producto por dos, cociente y resto de la división por
?    dos para el tipo: type NumBin = [Digbin]
?    donde convenimos que el primer elemento de las lista de dı́gitos es el dı́gito menos significativo
?    del número representado.
?    c) Redefinir las funciones del item anterior, observando una convención opuesta.
?    d) Definir funciones que multipliquen numeros binarios de acuerdo a las dos convenciones.
-}

-- a) Definir las operaciones de suma y producto módulo 2 para el tipo data DigBin = Cero |Uno
data DigBin = Cero | Uno deriving (Show, Eq)

-- Suma módulo 2
sumaM2 :: DigBin -> DigBin -> DigBin
sumaM2 Cero Cero = Cero
sumaM2 Cero Uno = Uno
sumaM2 Uno Cero = Uno
sumaM2 Uno Uno = Cero

-- Producto módulo 2
prodM2 :: DigBin -> DigBin -> DigBin
prodM2 Cero Cero = Cero
prodM2 Cero Uno = Cero
prodM2 Uno Cero = Cero
prodM2 Uno Uno = Uno

-- b) Definir las operaciones de suma binaria, producto por dos, cociente y resto de la división por
--    dos para el tipo: type NumBin = [Digbin]
--    donde convenimos que el primer elemento de las lista de dı́gitos es el dı́gito menos significativo
--    del número representado.
type NumBin = [DigBin]

-- Suma binaria o binary sum
bs :: NumBin -> NumBin -> NumBin
bs [] [] = []
bs (x:xs) [] = (x:xs)
bs [] (y:ys) = (y:ys)
bs (x:xs) (y:ys) = (sumaM2 x y) : (bs xs ys)

-- Producto por dos o product by two
pbt :: NumBin -> NumBin
pbt [] = []
pbt (x:xs) = (x:xs) ++ [Cero]

-- Cociente o quotient
q :: NumBin -> NumBin
q [] = []
q (x:xs) = xs

-- Resto o remainder
r :: NumBin -> NumBin
r [] = []
r (x:xs) = [x]
