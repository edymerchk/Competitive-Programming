# https://leetcode.com/problems/4sum/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  res = []
  nums.sort!

  for i in 0..nums.size-1
    x = target - nums[i]
    # puts "x #{x}"
    next if (i>0 && nums[i]==nums[i-1])
    for j in (i+1)..nums.size-1
      next if (j>i+1&&nums[j]==nums[j-1])
      l = j+1
      r = nums.size-1
      while l<r
        # puts "j=#{j} l=#{l} r=#{r}"
        # puts "j=#{nums[j]} l=#{nums[l]} r=#{nums[r]} "
        sum = nums[j]+nums[l]+nums[r]
        if sum < x
          l += 1
        elsif sum > x
          r -= 1
        else
          res << [nums[i],nums[j],nums[l],nums[r]]
          # puts "found with x #{x} #{[nums[i],nums[j],nums[l],nums[r]]}"
          while(l+1<r&&nums[l]==nums[l+1])
            l += 1
          end
          while(r-1>l&&nums[r]==nums[r-1])
            r -= 1
          end
          l += 1
          r -= 1
        end
      end
    end
  end
  res
end


nums = [1, 0, -1, 0, -2, 2]
target = 0

puts "#{four_sum(nums, target)}"
