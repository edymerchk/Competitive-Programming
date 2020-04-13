# https://leetcode.com/problems/reverse-string/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/879/

# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  j = s.size-1
  for i in 0..j/2
    t = s[i]
    s[i]=s[j]
    s[j]=t
    j-=1
  end
end

puts reverse_string(["h","e","l","l","o"])
puts reverse_string(["j"])
puts reverse_string(["a", "b"])
puts reverse_string(["a", "b", "c"])
