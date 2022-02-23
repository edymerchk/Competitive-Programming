file = File.exist?('in.in') ? File.new('in.in','r') : STDIN
t = file.gets.chomp.to_i

t.times do
  n = file.gets.chomp.to_i

  a = 2**n
  min = 2**(n/2)-2

  b = 2**(n-1)
  min2 = 2**(n-1)-2-min

  puts (a+min)-(b+min2)
end