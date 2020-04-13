# https://leetcode.com/problems/contains-duplicate/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/578/


# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = {}
  for i in 0..nums.size-1
    return true if hash[nums[i]]
    hash[nums[i]] = true
  end
  return false
end

# puts contains_duplicate([1,2,3,1])
# puts contains_duplicate([1,2,3,4])
# puts contains_duplicate([1,1,1,4])
