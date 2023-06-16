{-
*   6. Sin usar funciones predefinidas, defina recursivamente las siguientes funciones y
*      determine su tipo más general:

?  a) suma, que suma todos los elementos de una lista de números

?  b) alguno, que devuelve True si algún elemento de una lista de valores booleanos es True, y
?     False en caso contrario

?  c) todos, que devuelve True si todos los elementos de una lista de valores booleanos son True,
?     y False en caso contrario

?  d) codes, que dada una lista de caracteres, devuelve la lista de sus ordinales

?  e) restos, que calcula la lista de los restos de la división de los elementos de una lista de
?     números dada por otro número dado

?  f ) cuadrados, que dada una lista de números, devuelva la lista de sus cuadrados

?  g) longitudes, que dada una lista de listas, devuelve la lista de sus longitudes

?  h) orden, que dada una lista de pares de números, devuelve la lista de aquellos pares en los
?     que la primera componente es menor que el triple de la segunda

?  i) pares, que dada una lista de enteros, devuelve la lista de los elementos pares

?  j) letras, que dada una lista de caracteres, devuelve la lista de aquellos que son letras
?     (minúsculas o mayúsculas)

?  k) masDe, que dada una lista de listas xss y un número n, devuelve la lista de aquellas listas
?     de xss con longitud mayor que n
-}

-- a) suma, que suma todos los elementos de una lista de números
suma :: [Int] -> Int
suma [] = 0
suma (x:xs) = x + suma (xs)
