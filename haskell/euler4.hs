--#These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!


nums = [x | x <- [100..999], x `mod` 10 /= 0 ]

palcheck x 
	| temp == (reverse temp)    = True
    | otherwise = False
     where
       temp = (show x)

pals = [  a*b | a <- nums, b <- nums, palcheck (a*b)]

answer = maximum pals 




