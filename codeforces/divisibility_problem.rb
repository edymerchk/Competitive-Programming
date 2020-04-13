t = gets.chomp.to_i
t.times do
  a, b =  gets.split.map(&:to_i)
  res = 0
  if a%b ==0
    puts 0
  else
    puts b-a%b
  end
end
