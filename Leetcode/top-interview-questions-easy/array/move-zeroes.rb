# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/567/
# https://leetcode.com/problems/move-zeroes/

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  for i in 0..nums.size-1
    if nums[i] == 0
      j = i+1
      while nums[j] == 0
        j +=1
      end
      break if j == nums.size
      nums[i] = nums[j]
      nums[j] = 0
    end
  end
  nums
end


puts "#{move_zeroes([0,1,0,3,12])}"
