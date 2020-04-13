# https://leetcode.com/problems/plus-one/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/559/


# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  (digits.join.to_i+1).to_s.split('').map(&:to_i)
end
