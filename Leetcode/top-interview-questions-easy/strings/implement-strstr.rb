# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/885/
# https://leetcode.com/problems/implement-strstr/

require "pry-byebug"

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return 0 if needle.size == 0
  return 0 if needle == haystack

  for i in 0..haystack.size-1-(needle.size-1)
    if haystack[i] == needle[0]
      for j in 0..needle.size-1
        break if haystack[j+i] != needle[j]
      end
      return i if j == needle.size-1 && haystack[i+j] == needle[j]
    end
  end
  -1
end


# haystack = "hello"
# needle = "ll"

haystack = "mississippi"
needle = "pi"
puts str_str(haystack, needle)
