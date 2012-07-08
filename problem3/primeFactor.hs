findfactor acc 1 divisor   = acc
findfactor acc max divisor = if (rem max divisor) == 0
                             then findfactor (divisor:acc) (div max divisor) divisor
                             else findfactor acc max (divisor+1)

factor :: Int -> [Int]
factor n = findfactor [] n 2


isPrime :: Int-> Bool
isPrime n = (factor n) == [n]

memoizedIsPrime :: Int -> Bool
memoizedIsPrime n = (map isPrime [1..] !! (n-1))
