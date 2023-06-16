{-
    * Reescribir cada una de las siguientes definiciones sin usar let, where o if:
? a) f x = let (y,z) = (x,x) in y
? b) greater (x,y) = if x > y then True else False
? c) f (x,y) = let z = x + y in g (z,y) where g (a,b) = a − b
-}

-- ? a) f x = let (y,z) = (x,x) in y
f :: b -> b
f x = let (y,z) = (x,x) in y
-- redefino f sin usar let
f' :: b -> b
f' x = x
-- la funcion f en este caso devuelve el primer elemento de la tupla (x,x), no utiliza ni y ni z
-- por lo tanto, se puede redefinir como fst (x,x) o simplemente como x

-- ? b) greater (x,y) = if x > y then True else False
greater :: Ord a => (a, a) -> Bool
greater (x,y) = if x > y then True else False
-- redefino greater sin usar if
greater' :: Ord a => (a, a) -> Bool
greater' (x, y)
        | x >= y = True
        | otherwise = False
-- la funcion greater toma una tupla y devuelve True si el primero es mayor y False si no
-- para reescribirla use guardas para no usar if

-- ? c) f (x,y) = let z = x + y in g (z,y) where g (a,b) = a − b
f2 :: Num a => (a, a) -> a
f2 (x,y) = let z = x + y in g (z,y) where g (a,b) = a - b
-- redefino f2 sin usar let ni where
g :: Num a => (a, a) -> a
g (x,y) = x - y

f2' :: Num a => (a, a) -> a
f2' (x,y) = g (x + y, y)
-- la funcion f2 toma una tupla y devuelve la resta de la suma de sus elementos
-- para reescribirla simplemente sumo los elementos de la tupla y se los paso a g
-- g toma una tupla y devuelve la resta de sus elementos
-- me parecio mas simple crear g aparte y usarla en f2' que reescribir f2' todo en una linea