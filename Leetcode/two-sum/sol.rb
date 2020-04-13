# https://leetcode.com/problems/two-sum/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  res = nil
  for i in 0..nums.size-1
    x = target - nums[i]
    for j in (i+1)..nums.size-1
      if nums[j] == x
        res = [i, j]
        break
      end
    end
  end
  res
end


nums = [3, 2, 4]
target = 6

puts "#{two_sum(nums, target)}"
