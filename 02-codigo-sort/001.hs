-------------------------------------------------------
--- Selection Sort

delete y [] = []
delete y l = [x | x <- l, x /= y]

minimo [] = error "Lista Vacía"
minimo [x] = x
minimo (x:y:t) = if x < y then minimo (x:t)
                else minimo (y:t)

ssort [] = []
ssort [x] = [x]
ssort l = m:ssort l'
        where
            m = minimo l
            l' = delete m l

-------------------------------------------------------
--- Insertion Sort

insert x [] = [x]
insert x (y:t) = if x < y then (x:y:t)
                    else y:(insert x t)

isort [] = []
isort [x] = [x]
isort (x:t) = insert x (isort t)

-------------------------------------------------------
--- Quick Sort

qsort [] = []
qsort [x] = [x]
qsort (x:t) = qsort menores ++ [x] ++ qsort mayores
            where
                menores = [j | j <- t, j < x]
                mayores = [j | j <- t, j >= x]




























