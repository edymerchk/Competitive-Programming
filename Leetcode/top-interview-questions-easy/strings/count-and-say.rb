# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/886/
# https://leetcode.com/problems/count-and-say/

# @param {Integer} n
# @return {String}
def count_and_say(n)
  # n = n.to_s
  return "1" if n == 1

  # n = 2 =>
  count_and_say(n-1)
end

puts count_and_say(1)
puts count_and_say(2)



