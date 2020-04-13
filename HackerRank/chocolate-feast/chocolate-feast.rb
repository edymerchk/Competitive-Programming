t = gets.chomp.to_i
t.times do
  n,c,m = gets.split.map {|x| x.to_i }
  r = n/c
  res = r
  while r >= m
    res += r/m
    r = r/m + r%m
  end
  puts res
end