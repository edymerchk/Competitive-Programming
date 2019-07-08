# https://www.hackerrank.com/challenges/sock-merchant/problem

nn = gets.to_i
ar = gets.rstrip.split(' ').map(&:to_i)
pairs = []
res = 0
nn.times do |i|
  color = ar[i]
  if pairs[color] != nil
    pairs[color] = pairs[color] + 1
    res = res + 1 if pairs[color]%2 == 0
  else
    pairs[color] = 1
  end
end
puts res
