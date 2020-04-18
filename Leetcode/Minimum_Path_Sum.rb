# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
  for i in 1..grid[0].size-1
    grid[0][i] = grid[0][i-1]+ grid[0][i]
  end

  for i in 1..grid.size-1
    grid[i][0] = grid[i-1][0]+ grid[i][0]
  end

  for i in 1..grid.size-1
    for j in 1..grid[0].size-1
      prev = [grid[i-1][j], grid[i][j-1]].min
      grid[i][j] = grid[i][j] + prev
    end
  end

  grid.last.last
end



# puts min_path_sum([[1,3,1],[1,5,1],[4,2,1]])
puts min_path_sum([[1,2,5],[3,2,1]])