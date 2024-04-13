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

-- EJERCICIO 8 --
-- Definir la función haceFrioF/1, indica si una temperatura expresada en grados Fahrenheit es fría. Decimos que hace frío si la temperatura es menor a 8 grados Celsius. --

haceFrioF :: Float -> Bool
haceFrioF tempEnFahr = fahrToCelsius tempEnFahr < 8

-- EJERCICIO 9 --
{- Definir la función mcm/2 que devuelva el mínimo común múltiplo entre dos números, de acuerdo a esta fórmula. m.c.m.(a, b) = {a * b} / {m.c.d.(a, b)} -} 

mcm :: Integral a => a -> a -> a
mcm entero1 entero2 = (entero1 * entero2) `div` (gcd entero1 entero2)

-- EJERCICIO 10 --
-- Definir dispersion, que toma los tres valores y devuelve la diferencia entre el más alto y el más bajo --
-- Parte 1 --

maxTres :: Ord a => a -> a -> a -> a
maxTres dia1 dia2 dia3 = max dia1 (max dia2 dia3)

minTres :: Ord a => a -> a -> a -> a
minTres dia1 dia2 dia3 = min dia1 (min dia2 dia3)

dispersion :: (Ord a, Num a) => a -> a -> a -> a
dispersion dia1 dia2 dia3 = maxTres dia1 dia2 dia3 - minTres dia1 dia2 dia3

-- Parte 2 --

diasParejos :: Float -> Float -> Float -> Bool
diasParejos dia1 dia2 dia3 = dispersion dia1 dia2 dia3 < 30

diasLocos :: Float -> Float -> Float -> Bool
diasLocos dia1 dia2 dia3 = dispersion dia1 dia2 dia3 > 100

diasNormales :: Float -> Float -> Float -> Bool
diasNormales dia1 dia2 dia3 = not (diasParejos dia1 dia2 dia3) && not (diasLocos dia1 dia2 dia3)

