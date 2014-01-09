--#These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!


minus (x:xs) (y:ys) = case (compare x y) of 
           LT -> x : minus  xs  (y:ys)
           EQ ->     minus  xs     ys 
           GT ->     minus (x:xs)  ys
minus  xs     _     = xs


--union (x:xs) (y:ys) = case (compare x y) of 
--           LT -> x : union  xs  (y:ys)
--           EQ -> x : union  xs     ys 
--           GT -> y : union (x:xs)  ys
--union  xs     []    = xs
--union  []     ys    = ys


primesToQ m = eratos [2..m]  where
   eratos []     = []
   eratos (p:xs) = p : eratos (xs `minus` [p*p, p*p+p..m])


primesToG m = 2 : sieve [3,5..m]  where
    sieve (p:xs) 
       | p*p > m   = p : xs
       | otherwise = p : sieve (xs `minus` [p*p, p*p+2*p..])


sumOfConP m n = sum ((primesToG m) `minus` (primesToG n))