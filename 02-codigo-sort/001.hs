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






























