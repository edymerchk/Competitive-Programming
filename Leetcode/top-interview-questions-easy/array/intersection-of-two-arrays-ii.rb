# https://leetcode.com/problems/intersection-of-two-arrays-ii/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/674/



# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  hash = {}
  res = []

  for i in 0..nums1.size-1
    if hash[nums1[i]]
      hash[nums1[i]]+=hash[nums1[i]]
    else
      hash[nums1[i]] = 1
    end
  end

  for i in 0..nums2.size-1
    if hash[nums2[i]] && hash[nums2[i]] >0
      res << nums2[i]
      hash[nums2[i]]-=1
    end
  end
  res
end

# nums1 = [4,9,5]
# nums2 = [9,4,9,8,4]

nums1 = [1,2,2,1]
nums2 = [2,2]

puts "#{intersect(nums1, nums2)}"

