# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  hash = {}

  nums.each do |n|
    if hash[n]
      hash[n]+=1
    else
      hash[n]=1
    end
  end
  hash = hash.sort_by{|k,v| -v}
  hash[0...k].map {|k, v| k}
end