n = gets.chomp.to_i

n.times do
  num = gets.chomp.gsub!('_', '').split("").map(&:to_i).reduce(:+)
  original = num
  while num % 9 != 0
    num +=1
  end
  res = num - original
  puts res == 0 ? "0 or 9" : res
end
