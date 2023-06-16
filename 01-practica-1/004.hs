{-
*    4. Suponiendo que f y g tienen los siguientes tipos
?    f :: c → d
?    g :: a → b → c
!    y sea h definida como
?    h x y = f (g x y)
*    Determinar el tipo de h e indicar cuáles de las siguientes definiciones de
*    h son equivalentes a la dada:
?    h = f · g
?    h x = f · (g x)
?    h x y = (f · g) x y
*    ¿Cuál es el tipo de la función ( · )?
-}

-- f :: c -> d
-- f es una funcion que toma un valor de tipo c y devuelve un valor de tipo d

-- g :: a -> b -> c
-- g es una funcion que toma un valor de tipo a y un valor de tipo b y devuelve un valor de tipo c

-- h x y = f (g x y)
-- h es una funcion que toma un valor de tipo a y un valor de tipo b y devuelve un valor de tipo d
-- h es una funcion que toma dos valores, les aplica g y luego al resultado le aplica f

-- h = f . g es equivalente a h x y = f (g x y) ya que el . es la composicion de funciones

-- h x = f . (g x) no es equivalente a h x y = f (g x y) ya que h x toma un valor de tipo a
-- y devuelve un valor de tipo d. en este caso h esta tomando un solo valor y no dos como en la
-- definicion de h x y = f (g x y)

-- h x y = (f . g) x y es equivalente a h x y = f (g x y) ya que el . es la composicion de funciones
-- lo que sucede con la expresion (f . g) x y es que primero se aplica g a x e y, y luego se aplica
-- f al resultado de g x y. como sucede en la definicion de h x y = f (g x y)