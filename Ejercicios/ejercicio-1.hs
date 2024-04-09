-- EJERCICIO 1 --
-- Definir la función esMultiploDeTres/1, que devuelve True si un número es múltiplo de 3 --

esMultiploDeTres :: Int -> Bool
esMultiploDeTres numero = mod numero 3 == 0

-- EJERCICIO 2 -- 
-- Definir la función esMultiploDe/2, que devuelve True si el segundo es múltiplo del primero, p.ej.  --

esMultiploDe :: Int -> Int -> Bool
esMultiploDe numero1 numero2 = mod numero1 numero2 == 0

-- EJERCICIO 3 --
-- Definir la función cubo/1, devuelve el cubo de un número --

cubo :: Int -> Int
cubo numero = numero * numero

-- EJERCICIO 4 --
-- Definir la función area/2, devuelve el área de un rectángulo a partir de su base y su altura. --

area :: Num a => a -> a -> a
area base altura = base * altura

