t = gets.chomp.to_i
t.times do
  n = gets.chomp.to_i
  a = gets.chomp.to_i
  b = gets.chomp.to_i

  res = []
  n.times do |i|
    v = i*a+ (n-i-1)*b
    res.push(v) unless res.include?(v)
  end
  puts res.sort.join(' ')
end