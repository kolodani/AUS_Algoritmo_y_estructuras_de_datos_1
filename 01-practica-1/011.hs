{-
*    11. Dada las siguientes representaciones de los árboles generales y de los árboles binarios
!    data GenTree a = EmptyG | NodeG a [GenTree a]
!    data BinTree a = EmptyB | NodeB (BinTree a) a (BinTree a)
*    definir una función que dado un árbol general, lo transforme en un árbol binario de la siguiente manera:
*    Cada nodo NodeG en orden en el árbol general corresponde a un nodo NodeB en el árbol binario;
*    el hijo de la izquierda de NodeB es el nodo correspondiente al primer hijo de NodeG, y el hijo
*    derecho de NodeB es el nodo correspondiente al siguiente hermano de NodeG, es decir, el próximo
*    nodo en orden entre los hijos de los padres de NodeG.
-}

data GenTree a = EmptyG | NodeG a [GenTree a] deriving (Show, Eq)
data BinTree a = EmptyB | NodeB (BinTree a) a (BinTree a) deriving (Show, Eq)
