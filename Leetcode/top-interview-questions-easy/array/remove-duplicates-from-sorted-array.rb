# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/727/
# https://leetcode.com/problems/remove-duplicates-from-sorted-array/

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.size == 0

  c = nums[0]
  ri = 1
  for i in 1..nums.size-1
    if nums[i] != c
      c = nums[i]
      nums[ri] = c
      ri += 1
    end
  end
  ri
end

# puts remove_duplicates([0,0,0,0,1,1,1,2,2,3,3,4])
# puts remove_duplicates([])
# # puts remove_duplicates([0,1,2,3])
# # puts remove_duplicates([1,1,2])
