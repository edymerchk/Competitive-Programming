n = gets.chomp.to_i
p = Array.new(n, 0)
s = gets.chomp.to_s.split(//)
s = gets.chomp.to_s.split(//) if s.size == 0\
min_ids = 0
min2_ids = 0

last_idx = nil
s.each do |w|
  if w == '2'
    p[min2_ids] +=1
    min2_ids += 1
    min2_ids = 0 if min2_ids >= n
  else
    p[min1_ids] +=1
    min1_ids += 1
    min1_ids = 0 if min1_ids >= n
  end
  # if p[-1] == 0
  #   idx = last_idx ? last_idx + 1  : 0
  #   last_idx = idx
  #   p[idx] +=1
  #   next
  # end

  # idx = p.each_with_index.min[1]
  # if w == '2'
  #   idx = last_idx-1
  #   # Slow part
  #   # o_value = p[idx]
  #   # p[idx] = 1000000
  #   # old_idx = idx
  #   # idx = p.each_with_index.min[1]
  #   # p[old_idx]= o_value
  # end
  # p[idx] +=1
  # last_idx = idx
end

puts "#{p[-1]} #{p[-2]}"
