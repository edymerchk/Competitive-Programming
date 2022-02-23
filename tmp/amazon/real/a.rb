require 'pry-byebug' #TODO: remove


DX = [0, 1, 0, -1]
DY = [1, 0, -1, 0]

def numberAmazonTreasureTrucks(rows, column, grid)
   res = 0

   for i in 0...grid.size
        for j in 0...grid[0].size
            if grid[i][j] == 1
                # puts "#{i}, #{j}"
                res+=1
                dfs(grid, i, j)
            end
        end
   end
res
end

def dfs(grid, i, j)
    grid[i][j]= 0

    4.times do |k|
        new_x = i+DX[k]
        new_y = j+DY[k]

        if inside?(grid, new_x, new_y) && grid[new_x][new_y] == 1
            # puts "#{new_x} #{new_y}"
            dfs(grid, new_y, new_y)
        end
    end
end

def inside?(grid, i, j)
    i>=0 && i<=grid.size-1 && j >=0 && j <= grid[0].size-1
end

grid = [
  [1,1,0,0],
  [0,0,0,0],
  [0,0,1,1],
  [0,0,0,0]
]

puts numberAmazonTreasureTrucks(4,4, grid)