# @param {Integer[]} nums
# @return {Integer}
def min_start_value(nums)
  n = 1
  while(true)
    good = true
    res = n
    for i in 0..nums.size-1
      res+=nums[i]
      if res <= 0
        n+=1
        good = false
        break
      end
    end
    break if good
  end
  n
end

puts min_start_value([-3,2,-3,4,2])