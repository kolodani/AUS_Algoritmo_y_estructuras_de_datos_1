{-
*   5. Definir una función que determine si un año es bisiesto o no,
*      de acuerdo a la siguiente definición:
*   Año bisiesto 1. m. El que tiene un dı́a más que el año común, añadido al mes de febrero.
*   Se repite cada cuatro años, a excepción del último de cada siglo cuyo número de centenas no
*   sea múltiplo de cuatro. (Diccionario de la Real Academia Española, 22◦ ed.)
*   ¿Cúal es el tipo de la función definida?
-}

bisiesto :: Int -> Bool
bisiesto x
    | mod x 400 == 0 = True
    | mod x 100 == 0 = False
    | mod x 4 == 0 = True
    | otherwise = False