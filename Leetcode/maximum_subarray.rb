# https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3285/


# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  best =  nums[0]
  sum =  0
  for i in 0..nums.size-1 do
    sum = [nums[i], sum+nums[i]].max
    best = [best, sum].max
  end
  best
end

puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
puts max_sub_array([-1])
