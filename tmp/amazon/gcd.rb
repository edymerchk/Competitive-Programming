def gcd(a, b)
  return b if a == 0
  gcd(b%a, a)
end

def generalizedGCD(num, arr)
  res = arr[0]
  for i in 1..num-1
      res = gcd(arr[i], res)
      return 1 if res == 1
  end
  res
end

puts  generalizedGCD(5, [2,4,6,8,10])