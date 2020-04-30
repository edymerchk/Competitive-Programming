require 'pry-byebug'
# @param {Character[][]} matrix
# @return {Integer}
def maximal_square(matrix)
  return 0 if matrix.size == 0

  n = matrix.size
  m = matrix[0].size
  dp = Array.new(n) { Array.new(m, 0) }

  res = 0

  for i in 0...n
    dp[i][0] = matrix[i][0].to_i
    res = [res, dp[i][0]].max
  end

  for j in 0...m
    dp[0][j] = matrix[0][j].to_i
    res = [res, dp[0][j]].max
  end


  for i in 1...n
    for j in 1...m
      if matrix[i][j]=="1"
        dp[i][j] = [dp[i-1][j], dp[i][j-1], dp[i-1][j-1]].min+1
        res = [res, dp[i][j]].max
      end
    end
  end
  res*res
end

# arr = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]

puts maximal_square(arr)