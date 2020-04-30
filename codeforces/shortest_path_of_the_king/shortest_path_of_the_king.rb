file = File.exist?('in.in') ? File.new('in.in','r') : STDIN

DX = [0, 1, 0, -1, 1, -1, 1, -1]
DY = [1, 0, -1, 0, 1, -1, -1, 1]
MOV = ["R", "D", "L", "U", "RD", "LU", "LD", "RU"]

def inside?(i, j, grid)
  i>=0 && i<= grid.size-1 && j>=0 && j <=grid[0].size-1
end

map = {"a"=> 0, "b"=> 1, "c"=> 2, "d"=> 3, "e"=> 4,"f"=> 5, "g"=> 6, "h" => 7}

s2,s1 = file.gets.chomp.split('')
t2,t1 = file.gets.chomp.split('')

s1 = (s1.to_i-1-7).abs
s2 = map[s2]
t1 = (t1.to_i-1-7).abs
t2 = map[t2]


grid = Array.new(8) { Array.new(8) }
dist = Array.new(8) { Array.new(8, 100) }
queue = [[s1, s2]]
dist[s1][s2]=0
grid[s1][s2]=[]

while(queue.size != 0)
  x, y  = queue.shift
  8.times do |i|
    new_x = x+DX[i]
    new_y = y+DY[i]
    if inside?(new_x, new_y, grid) && dist[new_x][new_y]==100

      if dist[x][y]+1 < dist[new_x][new_y]
        dist[new_x][new_y]  = dist[x][y]+1
        grid[new_x][new_y] = grid[x][y] + [MOV[i]]
        queue << [new_x, new_y]
      end

      break if new_x == t1 && new_y == t2

    end
  end
end
puts dist[t1][t2]
grid[t1][t2].each do |e|
  puts e
end