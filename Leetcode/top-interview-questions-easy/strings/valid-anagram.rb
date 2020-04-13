# https://leetcode.com/problems/valid-anagram/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/882/

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.size != t.size

  hash_1 = {}
  hash_2 = {}
  for i in 0..s.size-1
    if hash_1[s[i]]
      hash_1[s[i]]+= 1
    else
      hash_1[s[i]] = 1
    end

    if hash_2[t[i]]
      hash_2[t[i]]+= 1
    else
      hash_2[t[i]] = 1
    end
  end
  # puts hash_1
  # puts hash_2
  hash_1 == hash_2
end


s = "anagram"
t = "nagaram"

puts is_anagram(s,t)
