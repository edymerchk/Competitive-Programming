t = gets.chomp.to_i
t.times do
  str = gets.chomp
  res = 0
  l = str.size
  (l/2).times do |i|
    res += (str[i].ord-str[l-i-1].ord).abs
  end
  puts res
end