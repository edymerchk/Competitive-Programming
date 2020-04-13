
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/646/
# https://leetcode.com/problems/rotate-array/
require "pry-byebug"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  nums2 = nums.dup
  for i in 0..nums.size-1
    nums[i] = nums2[(nums.size-k+i)%nums.size]
  end
  # puts "#{nums}"
end

rotate([1,2,3,4,5,6,7], 3)
rotate([1,2], 0)
