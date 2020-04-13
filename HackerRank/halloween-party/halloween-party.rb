t = gets.chomp.to_i
t.times do
  k = gets.chomp.to_i
  if k%2 == 0
    puts (k*k)/4
  else
    puts (k/2) * ((k/2)+1)
  end
end