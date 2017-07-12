def climbingStairs(n)
  fibo(n+1)
end


def fibo(n)
  if (n == 0 || n == 1)
    return n
  end

  n_1 = 1
  n_2 = 0
  res = 0

  i = 1
  while (i <= n)
    res = n_1 + n_2
    n_2 = n_1
    n_1 = res
    i += 1
  end

  res
end


p climbingStairs(2)
