# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.size == 0
  return nums[0] if nums.size == 1
  return nums.max if nums.size == 2
  return [nums[1], nums[0]+nums[2]].max if nums.size == 3

  dp = Array.new(nums.size+1, -1)

  dp[-2]=nums[-1]
  dp[-3]=nums[-2]

  max = 0

  for i in (nums.size-3).downto(0)
    dp[i]=nums[i]+[dp[i+2], dp[i+3]].max
    max = [max, dp[i]].max
  end
  max
end