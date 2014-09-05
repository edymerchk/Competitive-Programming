n = gets.chomp.to_i
sticks = gets.split.map(&:to_i)
q = sticks.size
while q >= 1
  puts q
  min = sticks.min
  sticks.map!{|e| e-min}.select!{|e| e>0}
  q = sticks.size
end
