# https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3289/

# @param {Integer[]} arr
# @return {Integer}
def count_elements(arr)
  h = {}
  res = 0
  arr.each do |e|
    if h[e]
      h[e]+=1
    else
      h[e]=1
    end
  end

  arr.each do |e|
    res +=1 if h[e+1]
  end
  res
end


puts count_elements([1,2,3])
puts count_elements([1,1,3,3,5,5,7,7])
puts count_elements([1,3,2,3,5,0])
puts count_elements([1,1,2,2])