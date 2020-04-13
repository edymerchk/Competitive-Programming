# https://leetcode.com/problems/first-unique-character-in-a-string/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/881/
require "pry-byebug"

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  return 0 if s.size == 1

  hash = {}
  for i in 0..s.size-1
    if hash[s[i]]
      hash[s[i]] = -1
    else
      hash[s[i]] = i
    end
  end

  min = s.size-1
  none = true
  hash.each do |k,v|
    if v!=-1 && v <= min
      none = false
      min = v
    end
  end
  return -1 if none
  min
end

puts first_uniq_char("aabbc")


