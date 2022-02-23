# @param {Integer[]} arr
# @param {Integer} target
# @return {Integer}

require 'pry-byebug'

def ranges_overlap?(r1, r2)
  r2.begin <= r1.end && r1.begin <= r2.end
end

def min_sum_of_lengths(arr, target)
  lengths = []
  csum = 0
  left = 0
  for i in 0...arr.size
    csum+=arr[i]
    while csum > target
      csum-= arr[left]
      left+=1
    end
    if csum == target
      lengths << {l: i-left+1, i: left, j: i}
    end
  end

  return -1 if lengths.size < 2
  lengths = lengths.sort_by{|e| e[:l]}

  for k in 0...lengths.size
    p = k+1
    while p <= lengths.size-1
      if !ranges_overlap?(lengths[k][:i]..lengths[k][:j], lengths[p][:i]..lengths[p][:j])
        return lengths[k][:l]+lengths[p][:l]
      end
      p+=1
    end
  end
  -1
end





# puts min_sum_of_lengths([10,2,3,1,5,1], 6)
# puts min_sum_of_lengths([3,2,2,4,3], 3)
# puts min_sum_of_lengths([7,3,4,7], 7)
# puts min_sum_of_lengths([4,3,2,6,2,3,4], 6)
# puts min_sum_of_lengths([5,5,4,4,5], 3)
# puts min_sum_of_lengths([3,1,1,1,5,1,2,1], 3)
# puts min_sum_of_lengths([1,6,1], 7)

arr = [78,18,1,94,1,1,1,29,58,3,4,1,2,56,17,19,4,1,63,2,16,11,1,1,2,1,25,62,10,69,12,7,1,6,2,92,4,1,61,7,26,1,1,1,67,26,2,2,70,25,2,68,13,4,11,1,34,14,7,37,4,1,12,51,25,2,4,3,56,21,7,8,5,93,1,1,2,55,14,25,1,1,1,89,6,1,1,24,22,50,1,28,9,51,9,88,1,7,1,30,32,18,12,3,2,18,10,4,11,43,6,5,93,2,2,68,18,11,47,33,17,27,56,13,1,2,29,1,17,1,10,15,18,3,1,86,7,4,16,45,3,29,2,1,1,31,19,18,16,12,1,56,4,35,1,1,36,59,1,1,16,58,18,4,1,43,31,15,6,1,1,6,49,27,12,1,2,80,14,2,1,21,32,18,15,11,59,10,1,14,3,3,7,15,4,55,4,1,12,4,1,1,53,37,2,5,72,3,6,10,3,3,83,8,1,5]
puts min_sum_of_lengths(arr, 97)