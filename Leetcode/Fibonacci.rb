def fib_r(a, b, n)
  n == 0 ? a : fib_r(b, a + b, n - 1)
end

def fib(n)
  fib_r(0, 1, n)
end

# @param {Integer} k
# @return {Integer}
def find_min_fibonacci_numbers(k)
  fibos = []
  i = 2
  while(true)
    fib_n = fib(i)
    if fib_n > k
      break
    else
      i+=1
      fibos << fib_n
    end
  end

  res = 0
  i = fibos.size-1
  sum = 0
  while(true)
    break if sum==k

    if sum + fibos[i]>k
      # nothing
    elsif sum+fibos[i]==k
      res+=1
      break
    else
      sum+=fibos[i]
      res+=1
    end
    i-=1
  end
  res
end

# puts find_min_fibonacci_numbers(10000000)
# puts find_min_fibonacci_numbers(14930353)
# puts find_min_fibonacci_numbers(19)