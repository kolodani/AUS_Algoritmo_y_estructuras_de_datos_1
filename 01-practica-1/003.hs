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
