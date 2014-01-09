--These solutions to project euler challenges by no means illustrate graceful or robust code, but are mostly hack-jobs intent on simply reaching the answer!!

--divisors :: Integer -> [Integer]

--divisors 1 = [1]

--divisors x = 1:[ y | y <- [2..(x `div` 2)], x `mod` y == 0] 


minus :: (Eq a) => [a] -> [a] -> [a]
minus [] xs                      = []
minus (y:ys) xs | y `notElem` xs = y : (minus ys xs)
                | otherwise      = minus ys xs

isDivisor :: Int -> Int -> Bool
isDivisor x y 
   | x `mod` y == 0 && x /= y = True
   | otherwise                = False

sumOfDivisors :: Int -> Int
sumOfDivisors x = sum $ filter (isDivisor x) [1..x]

getAbundantNumbers :: [Int]
getAbundantNumbers = filter (\y -> y < sumOfDivisors y) [1..28123]

sumList = [ x+y | x <- getAbundantNumbers, y<-getAbundantNumbers, x + y <= 28123]

excludedSumList = [1..28123] `minus` sumList 

main = print (sum excludedSumList)