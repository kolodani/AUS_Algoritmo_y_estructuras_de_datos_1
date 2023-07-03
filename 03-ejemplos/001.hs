sumaDivisores d = sum [x | x <- [1..d], mod d x == 0, x /= d]
perfectos p = [x | x <- [1..p], sumaDivisores x == x]

----------------------------------------------------------

juntar :: (Ord a) => [a] -> [a] -> [a]
juntar a [] = a
juntar [] b = b
juntar (x:xs) (y:ys) = if x <y then (x:juntar xs (y:ys)) else (y:juntar ys (x:xs))

----------------------------------------------------------

particion :: (Ord a) => a -> [a] -> ([a],[a])
particion p [] = ([],[])
particion p (x:xs) = if x < p then (x:l1,l2) else (l1,x:l2)
    where (l1,l2) = particion p xs

qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort [a] = [a]
qsort (x:xs) = qsort y ++ [x] ++ qsort ys
    where (y,ys) = particion x xs

----------------------------------------------------------

miZip :: [a] -> [b] -> [(a,b)]
miZip [] _ = []
miZip _ [] = []
miZip (x:xs) (y:ys) = (x,y):miZip xs ys

----------------------------------------------------------

prodEscalar :: [Int] -> [Int] -> Int
prodEscalar [] _ = 0
prodEscalar _ [] = 0
prodEscalar (x:xs) (y:ys) = sum [ x*y | (x,y) <- miZip xs ys]

----------------------------------------------------------

indexado :: [a] -> [(a, Int)]
indexado lista = miZip lista [1..]

----------------------------------------------------------

inserta :: (Ord a) => a -> [a] -> [a]
inserta a [] = [a]
inserta a (x:xs) = if a < x then a:x:xs else x:inserta a xs

----------------------------------------------------------

split [] = ([],[])
split [x] = ([x],[])
split (x:xs:t) = (x:m1,xs:m2)
    where (m1,m2) = split t

----------------------------------------------------------

data ArbolBin a = VacioAB | NodoAB a (ArbolBin a) (ArbolBin a) deriving (Show, Eq)

mkNewTree :: (Ord a) => ArbolBin a
addTree :: (Ord a) => a -> ArbolBin a -> ArbolBin a
surfTree :: (Ord a) => a -> ArbolBin a -> Bool
inOrderTree :: (Ord a) => ArbolBin a -> [a]

mkNewTree = VacioAB

addTree a VacioAB = NodoAB a VacioAB VacioAB
addTree a (NodoAB n izq der)
                            | a == n = NodoAB n izq der
                            | a < n = NodoAB n (addTree a izq) der
                            | a > n = NodoAB n izq (addTree a der)

surfTree a VacioAB = False
surfTree a (NodoAB n izq der)
                            | a == n = True
                            | a < n = surfTree a izq
                            | a > n = surfTree a der

inOrderTree VacioAB = []
inOrderTree (NodoAB n izq der) = inOrderTree izq ++ [n] ++ inOrderTree der