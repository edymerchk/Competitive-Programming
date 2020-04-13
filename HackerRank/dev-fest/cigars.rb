while line = gets
  a, b = line.split.map(&:to_i)
  puts a + (a-1)/(b-1)
end
