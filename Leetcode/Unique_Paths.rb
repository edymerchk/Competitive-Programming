# https://leetcode.com/problems/unique-paths/

# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  grid = Array.new(n, Array.new(m, 0))

  puts "#{grid}"
  puts ""

  grid[0] = Array.new(grid[0].size, 1)

  for i in 0..grid.size-1
    grid[i][0] = 1
  end

  puts "#{grid}"

  for i in 1..grid.size-1
    for j in 1..grid[0].size-1
      grid[i][j] =  grid[i-1][j] + grid[i][j-1]
    end
  end

  grid.last.last
end