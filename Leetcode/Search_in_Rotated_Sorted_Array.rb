# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  li = 0
  ls = nums.size-1
  res = -1
  while(li<ls)
    middle = nums.size/2
    # puts nums[middle]
    if nums[middle] == target
      res=middle
      break
    else
      if target < middle
        ls=target
      end
    end

    break
  end
  res
end


nums = [4,5,6,7,0,1,2]
target = 0

puts search(nums, target)