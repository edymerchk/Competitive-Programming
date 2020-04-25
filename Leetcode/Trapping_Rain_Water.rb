require 'pry-byebug'
# @param {Integer[]} height
# @return {Integer}
def trap(vec)
  return 0 if vec.size ==0

  res=0
  max_by_right=Array.new(vec.size)
  max_by_right[-1]=vec[-1]
  max_by_left=[vec[0]]
  for i in 1...vec.size
    max_by_left[i]=[max_by_left[i-1], vec[i]].max
    max_by_right[vec.size-1-i]=[max_by_right[vec.size-i], vec[vec.size-1-i]].max
  end

  for i in 1..vec.size-2
    lm = max_by_left[i]
    rm = max_by_right[i]

    ha=vec[i]
    if lm>ha && rm>ha
      hi = [lm, rm].min-ha
      res+=hi
    end
  end
  res
end

puts trap([0,0,0,0,1,0,2,1,0,1,3,2,1,2,1, 0,0,0])
# puts trap([2,0,1])