# https://leetcode.com/problems/two-sum/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  res = nil
  hash = {}
  for i in 0..nums.size-1
    c = target - nums[i]
    # puts "looking for c #{c} h: #{hash}"
    if hash[c]
      res = [hash[c],i]
      break
    end
    hash[nums[i]] = i
  end
  res
end


nums = [3, 2, 3]
target = 6

puts "#{two_sum(nums, target)}"
