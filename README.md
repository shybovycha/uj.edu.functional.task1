# Funkcyjne Programowanie

## Zadania

Napisać następne funkcję:

* `poleKola`, która oblizy pole kola z radiusem `r`
* `poleKola'`, która robi te ż same, tylko zawiera że radius jest większym od `0`

Następne funkcję powinny być realizowane za pomoce mechanizmu **watches** oraz ze zwykłym `if`-em:

* `mnoz`, która obliczy `f(a, b) = a + f(a, b-1), b > 1; a, b <= 1`
* `s`, która obliczy `f(n, k) = 1, n = 0 AND k = 0; 0, n = 0 OR k = 0; (k * (s(n-1, k) + (s(n-1), (k-1)))), n != 0, k != 0`
* `sd n`, która obliczy sumę dzielników liczby `n`
* `rown`, która rozwiaza kwadratyczne równiania

Zrobić następne zadania na listach:

* `is_sub a b` - zawiera czy lista `a` jest pod-listem listy `b`
* `sum` - obliczy sumę listy
* `map f l` - aplikacja funkcji `f` do każdego elementu listy `l`