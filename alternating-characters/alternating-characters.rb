t = gets.chomp.to_i
t.times do
  str = gets.chomp
  res = 0
  size_o = str.size-1
  size_o.times do |i|
    if str[i] == str[i+1]
      res += 1
    end
  end
  puts res
end