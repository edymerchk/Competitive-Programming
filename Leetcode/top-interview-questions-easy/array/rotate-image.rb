# https://leetcode.com/problems/rotate-image/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/770/

require "pry-byebug"

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  limit = matrix.size-1

  for i in 0..limit
    for j in i+1..limit
      tmp = matrix[i][j]
      matrix[i][j] = matrix[j][i]
      matrix[j][i] = tmp
    end
  end

  for i in 0..limit
    matrix[i] = matrix[i].reverse
  end
end


matrix = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]
rotate(matrix)
