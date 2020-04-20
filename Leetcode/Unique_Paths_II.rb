# https://leetcode.com/problems/unique-paths-ii/

# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(grid)

  #  first step is a obs
  return 0 if grid[0][0] == 1

  # only one colomn and has obs
  if grid.size == 1 && grid[0].include?(1)
    return 0
  end

  # only one row and has obs
  if grid[0].size == 1
    obs = false
    for i in 0..grid.size-1
      if grid[i][0] == 1
        obs = true
        break
      end
    end

    return 0 if obs
  end

#   puts "#{grid}"
#   puts ""

 # first row
  obs = false
  for i in 0..grid[0].size-1
    if grid[0][i]==1
      grid[0][i] = -1
      obs = true
    else
      if obs
        grid[0][i]=-1
      else
        grid[0][i]=1
      end
    end
  end


  #first column
  obs = false
  for i in 1..grid.size-1
    if grid[i][0]== 1
      grid[i][0]=-1
      obs = true
    else
      if obs
        grid[i][0]=-1
      else
        grid[i][0]= 1
      end
    end
  end


  for i in 1..grid.size-1
    for j in 1..grid[0].size-1
      if grid[i][j] == 1
        grid[i][j] = -1
        next
      end
      sum = 0
      sum+=  grid[i-1][j] if grid[i-1][j] != -1
      sum+=  grid[i][j-1] if grid[i][j-1] != -1

      grid[i][j] =  sum
    end
  end

#  last step is an obs
  return 0 if grid.last.last == -1

  grid.last.last
end