
t = gets.chomp.to_i
t.times do
  x, n, m =  gets.chomp.split.map(&:to_i)

  n.times do
    if (x/2)+10 < x
      x = (x/2)+10
    else
      break
    end
  end

  x = x-(m*10)

  if x <= 0
    puts "YES"
  else
    puts "NO"
  end
end