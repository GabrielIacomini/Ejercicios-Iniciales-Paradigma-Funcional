-- EJERCICIO 1 --
-- Definir la función esMultiploDeTres/1, que devuelve True si un número es múltiplo de 3 --

esMultiploDeTres :: Int -> Bool
esMultiploDeTres numero = mod numero 3 == 0

