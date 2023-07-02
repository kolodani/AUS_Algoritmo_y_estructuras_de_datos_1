{-
*    10.
?    a) Definir las operaciones de suma y producto módulo 2 para el tipo data DigBin = Cero |Uno
?    b) Definir las operaciones de suma binaria, producto por dos, cociente y resto de la división por
?    dos para el tipo: type NumBin = [Digbin]
?    donde convenimos que el primer elemento de las lista de dı́gitos es el dı́gito menos significativo
?    del número representado.
?    c) Redefinir las funciones del item anterior, observando una convención opuesta.
?    d) Definir funciones que multipliquen nÃo meros binarios de acuerdo a las dos convenciones.
-}

-- a) Definir las operaciones de suma y producto módulo 2 para el tipo data DigBin = Cero |Uno
data DigBin = Cero | Uno deriving (Show, Eq)

-- Suma módulo 2
(+) :: DigBin -> DigBin -> DigBin
Cero + Cero = Cero
Cero + Uno = Uno
Uno + Cero = Uno
Uno + Uno = Cero

-- Producto módulo 2
(*) :: DigBin -> DigBin -> DigBin
Cero * Cero = Cero
Cero * Uno = Cero
Uno * Cero = Cero
Uno * Uno = Uno

{-
?    b) Definir las operaciones de suma binaria, producto por dos, cociente y resto de la división por
?    dos para el tipo:
?    type NumBin = [Digbin]
?    donde convenimos que el primer elemento de las lista de dı́gitos es el dı́gito menos significativo
?    del número representado.
?    c) Redefinir las funciones del item anterior, observando una convención opuesta.
?    d) Definir funciones que multipliquen nÃo meros binarios de acuerdo a las dos convenciones.
-}