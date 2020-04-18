# @param {Integer[]} nums
# @return {Integer}
def find_max_length(nums)
  return 0 if nums.size == 1

  max = 0
  count = 0
  hash = { 0 => -1}

  for i in 0..nums.size-1
   if nums[i] == 0
     count+=1
   else
     count-=1
   end
   if hash[count]
     max = [max, i-hash[count]].max
   else
     hash[count] = i
   end
  end
  max
end