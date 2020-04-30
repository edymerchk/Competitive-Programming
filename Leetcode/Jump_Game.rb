# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  return true if nums.size == 1
  can?(nums, nums.size-1)
end

def can?(nums, i)
  return true if i == 0
  i = i-1
  steps = 0
  while i >= 0
    steps+=1
    return can?(nums, i) if steps <= nums[i]
    i-=1
  end
  false
end

# puts can_jump([3,0,0,0,2,0,9])
# puts can_jump([2,3,1,0,4])
puts can_jump([3,2,1,0,4])