# https://leetcode.com/problems/reverse-integer/solution/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/880/


# @param {Integer} x
# @return {Integer}
def reverse(x)
  res = x.to_s.split('').reverse
  res = res.join('').to_i
  res = res*-1 if x < 0

  return 0 if res > ((2**31)-1) || res < ((2**31)*-1)
  res
end


puts reverse(123)
puts reverse(-123)
puts reverse(120)
puts reverse(1534236469)
puts reverse(-2147483648)
