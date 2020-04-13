t = gets.chomp.to_i
t.times do
  n = gets.chomp.to_i
  n-=1 if n%2 == 0
  puts n/2
end
