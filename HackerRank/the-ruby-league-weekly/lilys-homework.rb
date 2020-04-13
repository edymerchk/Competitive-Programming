
n = gets.to_i
vec = gets.strip.split.map &:to_i
def find_swaps(vec)
  map = vec.each_with_index.map{|x,i| [x,i]}.to_h
  swaps = 0; sort = vec.sort
  for i in 0...vec.size do
    if sort[i] != vec[i]
      swaps += 1
      map[vec[i]] = map[sort[i]]
      vec[map[sort[i]]] = vec[i]
      vec[i] = sort[i]
    end
  end
  swaps
end

puts [find_swaps(vec),find_swaps(vec.reverse)].min
