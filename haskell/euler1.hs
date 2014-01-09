--These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!


--If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

--Find the sum of all the multiples of 3 or 5 below 1000.

r = [x | x<- [0..999], x `mod` 3 == 0 || x `mod` 5 == 0 ]



--If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

--Find the sum of all the multiples of 3 or 5 below 1000.

--s = [x | x<- [0..999], x `mod` 3 == 0 || x `mod` 5 == 0 ]

fibNum :: Int -> Int
fibNum 0 = 0
fibNum 1 = 1
fibNum n = fibNum (n-1) + fibNum (n-2)


s = map fibNum [0..33]

n = [ x | x <- s, x `mod` 2 == 0]


