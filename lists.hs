list_sum :: [Integer] -> Integer
list_sum [] = 0
list_sum (a:as) = a + list_sum as

has_sublist :: [Integer] -> [Integer] -> Bool
has_sublist list sublist
    | l < 1 = False
    | take n list == sublist = True
    | otherwise = has_sublist (drop 1 list) sublist
    where
        n = length sublist
        l = length list

my_map :: (a -> a) -> [a] -> [a]
my_map _ [] = []
my_map func (x:xs) = (func x) : (func `my_map` xs)

{-my_map (^ 2) [1, 2, 3, 4, 5]-}