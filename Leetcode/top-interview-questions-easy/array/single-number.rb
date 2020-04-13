# https://leetcode.com/problems/single-number/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/549/

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  hash = {}

  for i in 0..nums.size-1
    if hash[nums[i]]
      hash.delete(nums[i])
    else
      hash[nums[i]] = true
    end
  end
  return hash.keys.first
end


# puts single_number([2,2,1])
# puts single_number([4,1,2,1,2])


# Other solution using Math:
# 2∗(a+b+c)−(a+a+b+b+c)=c
