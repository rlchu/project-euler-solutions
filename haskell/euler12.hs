--#These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!


divisors :: Integer -> [Integer]

divisors 1 = [1]

divisors x = 1:[ y | y <- [2..(x `div` 2)], x `mod` y == 0] 


num_of_divisors e = length (divisors e)

tri_num :: Integral a => a -> a
tri_num 0 = 0
tri_num x = x + tri_num (x-1)




here =  show (2^1000)

summer [] = 0
summer (a:hs) = (read [a] :: Int ) + summer hs

is_prime x 
is_prime 1 = True
		| divisors x == [1,x] = True
		| otherwise = False

-- prob 36 ;)
decToBin x = reverse $ decToBin' x
  where
    decToBin' 0 = []
    decToBin' y = let (a,b) = quotRem y 2 in [b] ++ decToBin' a

bin_pal_check x
			| decToBin x == reverse (decToBin x) = True
			| otherwise = False


ya = [x| x<-[1,3..10^8], show x == reverse (show x) && bin_pal_check x]