t = gets.chomp.to_i
t.times do
  a, b, c, d =  gets.chomp.split.map(&:to_i)

  if(a>b)
    x=a
  else
    x=b
  end

  if(b>c)
    y=b
  else
    y=c
  end

  if(c<d)
    z=c
  else
    z=d
  end
  puts "#{x} #{y} #{z}"
end