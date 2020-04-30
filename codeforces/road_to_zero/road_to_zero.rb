file = File.exist?('in.in') ? File.new('in.in','r') : STDIN

t = file.gets.chomp.to_i
t.times do
  x, y =  file.gets.chomp.split.map(&:to_i)
  a, b =  file.gets.chomp.split.map(&:to_i)

  if a == 0 || b == 0
    puts 0
    next
  end

  if x==y
    puts [x*b, a*2*x].min
  elsif x > y
    c=a*(x-y)+b*y
    d=a*(x-y)+2*a*y
    puts [c,d].min
  else
    c=a*(y-x)+b*x;
    d=a*(y-x)+2*a*x;
    puts [c,d].min
  end
end