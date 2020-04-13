n = gets.chomp.to_i
h = {}
n.times do |i|
  h[i] = gets.chomp
end
res = 0
('a'..'z').to_a.each do |l|
  found = true
  n.times do |i|
    found = false unless h[i].index(l)
  end
  res += 1 if found
end
puts res
