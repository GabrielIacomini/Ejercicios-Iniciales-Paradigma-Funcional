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


-- EJERCICIO 5 --
-- Definir la función esBisiesto/1, indica si un año es bisiesto. (Un año es bisiesto si es divisible por 400 o es divisible por 4 pero no es divisible por 100) --

esBisiesto :: Int -> Bool
esBisiesto anio = (mod anio 400 == 0) || (mod anio 4 == 0 && mod anio 1006 /= 0) 

-- EJERCICIO 6 --
-- Definir la función celsiusToFahr/1, pasa una temperatura en grados Celsius a grados Fahrenheit. --

celsiusToFahr :: Floating a => a -> a
celsiusToFahr gradosEnCelcius = gradosEnCelcius * (9/5) + 32

-- EJERCICIO 7 --
-- Definir la función fahrToCelsius/1, la inversa de la anterior. --

fahrToCelsius :: Floating a => a -> a
fahrToCelsius gradosEnFahr = (gradosEnFahr - 32) * 5/9

