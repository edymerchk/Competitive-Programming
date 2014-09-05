gets
sticks = gets.split.map(&:to_i)
while sticks.size >= 1
  puts sticks.size
  min = sticks.min
  sticks.map!{|e| e-min}.select!{|e| e>0}
end
