{-
1)
Un entero positivo es perfecto si es igual a la suma de sus divisores, excluyendo el propio número.
Definir por comprensión la función

perfectos :: Int -> [Int]

tal que (perfectos n) es la lista de todos los números perfectos menores que n. Por ejemplo,
perfectos 500  == [6,28,496]
Indicación: Usar la función divisores vista en clase
-}

perfectos :: Int -> [Int]
perfectos n = [x | x <- [1..n], sumaDivisores x == x]

sumaDivisores :: Int -> Int
sumaDivisores d = sum [x | x <- [1..d], mod d x == 0, x /= d]

{-
2)
Escribir una función que recibe como argumento dos listas ordenadas,
y devuelve una lista ordenada fusión de las listas argumentos (No se debe usar ningún método de clasificación)

juntar :: (Ord a)=> [a]->[a]->[a]
-}

juntar :: (Ord a) => [a] -> [a] -> [a]
juntar a [] = a
juntar [] b = b
juntar (x:xs) (y:ys) = if x < y then (x:juntar xs (y:ys)) else (y:juntar ys (x:xs))

{-
3)
Un CONJUNTO o SET, es una colección de ítems distintos, en la cual un ítem puede ser testeado  si es miembro, insertado o  borrado de la colección.
La cantidad  de elementos distintos es lo que se denomina el tamaño del conjunto.

Module Set (Set,  emptySet, setEmpty, inSet, addSet, delSet) where

emptySet  ::  Set a setEmpty  ::  Set a  -> Bool

inSet      :: (Eq a) => a -> Set a -> Bool

addSet    :: (Eq a) => a -> Set a -> Set a

delSet    :: (Eq a) => a -> Set a -> Set a

unionSet :: (Eq a) => Set a -> Set a -> Set a

Defina el tipo de dato e implemente los métodos del nuevo tipo de dato,
utilizando  listas no ordenadas y sin duplicados.El metodo unionSet (Union de dos conjuntos) se escribira haciendo uso de los metodos ya definidos.

-}