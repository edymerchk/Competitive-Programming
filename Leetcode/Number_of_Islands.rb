# https://leetcode.com/problems/number-of-islands/
# https://leetcode.com/problems/number-of-islands/
DX = [0, 1, 0, -1]
DY = [1, 0, -1, 0]

def inside?(grid, i, j)
  i>=0 && i<= grid.size-1 && j>=0 && j <=grid[0].size-1
end

def dfs(grid, i, j)
  grid[i][j]=0

  4.times do |k|
    new_x = i+DX[k]
    new_j = j+DY[k]

    dfs(grid, new_x, new_j) if inside?(grid, new_x, new_j) && grid[new_x][new_j] == "1"
  end
 # above is same as:
  # dfs(grid, i-1, j) if inside?(grid, i-1, j) && grid[i-1][j] == "1"
  # dfs(grid, i+1, j) if inside?(grid, i+1, j) && grid[i+1][j] == "1"
  # dfs(grid, i, j-1) if inside?(grid, i, j-1) && grid[i][j-1] == "1"
  # dfs(grid, i, j+1) if inside?(grid, i, j+1) && grid[i][j+1] == "1"
end


def num_islands(grid)
  islands = 0
  adj = Array.new(grid.size, [])

  for i in 0..grid.size-1
    for j in 0..grid[0].size-1
      if grid[i][j] == "1"
        islands+=1
        dfs(grid,i,j,)
      end
    end
  end
  islands
end
