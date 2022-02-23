t = gets.chomp.to_i
t.times do
  n, a, b, c, d =  gets.chomp.split.map(&:to_i)
  uu = a+b
  ul = a-b
  wu = c+d
  wl = c-d

  res = "No"
  for i in wl..wu
    puts "#{i}%#{n} -> #{i%n}"
    if i%n >= ul && i%n <= uu
      puts "#{i}%#{n} -> #{i%n}---"
      res = "yes"
    end
  end
  puts res
end