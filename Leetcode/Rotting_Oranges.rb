# @param {Integer[][]} grid
# @return {Integer}

DX = [0, 1, 0, -1]
DY = [1, 0, -1, 0]

def oranges_rotting(grid)
  rottens = []
  fresh = 0
  for i in 0..grid.size-1
    for j in 0..grid[0].size-1
      rottens << [i,j] if grid[i][j] == 2
      fresh+=1 if grid[i][j] == 1
    end
  end

  return 0 if fresh == 0
  return -1 if rottens.empty?

  rottens << [-1,-1] #round separator
  bfs(grid, fresh, rottens)
end


def bfs(grid, fresh, queue)
  res=-1
  pring = 0

  while(queue.size != 0)
    cell = queue.shift
    if cell==[-1,-1]
      res+=1
      queue << [-1,-1] if queue.size != 0
      next
    end

    # puts "visiting #{cell} -> childs: #{children(cell[0], cell[1], grid)}"
    ch = children(cell[0], cell[1], grid)

    ch.each do |child|
      grid[child[0]][child[1]]=2
      pring+=1
      queue.push(child)
    end
  end
  return -1 if fresh > pring
  res
end

def inside?(i, j, grid)
  i>=0 && i<= grid.size-1 && j>=0 && j <=grid[0].size-1
end

def children(x,y, grid)
  children = []
  4.times do |i|
    new_x = x+DX[i]
    new_y = y+DY[i]
    children << [new_x, new_y] if inside?(new_x, new_y, grid) && grid[new_x][new_y]==1
  end
  children
end