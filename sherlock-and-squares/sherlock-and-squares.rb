t = gets.chomp.to_i

t.times do
  a, b = gets.chomp.split.map(&:to_i)
  i = 0
  res = 0
  while true
    i +=1
    break if i*i > b
    res += 1 if i*i <= b and i*i >= a
  end
  puts res
end