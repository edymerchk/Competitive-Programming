n, m = gets.split.map(&:to_i)
res = 0
m.times do
  a, b, k = gets.split.map(&:to_i)
  res += (b-a+1)*k
end
puts res/n