memoized_fib :: Int -> Integer
memoized_fib = (map fib [0 ..] !!)
   where fib 0 = 0
         fib 1 = 1
         fib n = memoized_fib (n-2) + memoized_fib (n-1)

sumFact :: Integer -> Integer -> Integer
sumFact acc num 
  | ((rem num 2) == 0)  = acc + num
  | otherwise = acc

