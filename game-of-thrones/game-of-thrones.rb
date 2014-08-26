str = gets.chomp
h = {}
str.size.times do |i|
  h[str[i]] = (h[str[i]]||0) + 1
end
sum = 0
h.each do |k,v|
  sum += v%2
end
puts sum >= 2 ? "NO" : "YES"