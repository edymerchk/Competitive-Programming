A = 97
t = gets.chomp.to_i
t.times do
  res = ""
  n, a, b =  gets.chomp.split.map(&:to_i)

  n.times do |i|
    if a == 1
      res << i+A
    else
      res << (i%b)+A
    end
  end
  puts "#{res}"
end
