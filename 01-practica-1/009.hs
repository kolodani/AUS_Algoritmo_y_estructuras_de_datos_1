{-
*    9. Definir el tipo de datos Direction cuyos valores describan los puntos cardinales. Definir la
*       función move que dado un punto en el plano (representado como un par de enteros) y una dirección
*       devuelva el punto que se obtiene el desplazarse una unidad en dicha dirección.
-}

data Direction = North | South | East | West deriving (Show, Eq)

move :: (Int, Int) -> Direction -> (Int, Int)
move (x, y) North = (x, y + 1)
move (x, y) South = (x, y - 1)
move (x, y) East = (x + 1, y)
move (x, y) West = (x - 1, y)