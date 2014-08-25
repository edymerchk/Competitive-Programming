t = gets.chomp.to_i
t.times do
  n = gets.chomp.to_i
  puts 2 ** ((n+1)/2+1)-1-(n%2)
end
