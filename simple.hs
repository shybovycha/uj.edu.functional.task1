poleKola :: Double -> Double
poleKola r = pi * (r ^ 2)

poleKola' :: Double -> Double
poleKola' r = if r >= 0 then pi * r ^ 2
            else
                error "Błąd! R nie może być mniej od zero!"

mnoz :: Integer -> Integer -> Integer
mnoz a b = if b > 1 then a + (mnoz a (b - 1))
            else
                a

mnoz' :: Integer -> Integer -> Integer
mnoz' a b
    | b > 1 = a + mnoz' a (b - 1)
    | otherwise = a

s :: Integer -> Integer -> Integer
s n k = if (n == 0) && (k == 0) then 1
        else if (n == 0 && k /= 0) || (n /= 0 && k == 0) then 0
            else (k * (s (n - 1) k)) + (s (n - 1) (k - 1))

s' :: Integer -> Integer -> Integer
s' n k
    | (n == 0) && (k == 0) = 1
    | (n == 0 && k /= 0) || (n /= 0 && k == 0) = 0
    | otherwise = (k * (s (n - 1) k)) + (s (n - 1) (k - 1))

sd :: Integer -> Integer
sd n = suma_dzielnikow n n

suma_dzielnikow :: Integer -> Integer -> Integer
suma_dzielnikow n 0 = 0
suma_dzielnikow n i = if (n `mod` i) == 0 then i + (suma_dzielnikow n (i - 1))
                        else suma_dzielnikow n (i - 1)

rown :: Double -> Double -> Double -> (Double, Double)
rown a b c = if d < 0.0 then error "Nie ma rozwiązań"
            else (x1, x2)
            where
                d = (b ^ 2) - (4 * a * c)
                x1 = ((-b - (sqrt d)) / (2 * a))
                x2 = ((-b + (sqrt d)) / (2 * a))

