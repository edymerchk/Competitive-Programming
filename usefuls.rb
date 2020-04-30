# INF
INF = 4611686018427387903

# Fibonacci

def fib_r(a, b, n)
  n == 0 ? a : fib_r(b, a + b, n - 1)
end

def fib(n)
  fib_r(0, 1, n)
end


# GCD

def gcd(a, b)
  return b if a == 0
  gcd(b%a, a)
end

# inside grid

def inside?(grid, i, j)
  i>=0 && i<= grid.size-1 && j>=0 && j <=grid[0].size-1
end

# visit left, up, right, down neighbors

DX = [0, 1, 0, -1]
DY = [1, 0, -1, 0]
4.times do |i|
  new_x = x+DX[i]
  new_j = y+DY[i]
end

# BFS
def bfs(node)
  queue = []
  queue.push(node)

  while(queue.size != 0)
    n = queue.shift
    puts n.value
    n.children.each do |child|
      queue.push(child)
    end
  end
end

# DFS
def dfs(node)
  puts node.value
  node.children.each do |child|
    dfs(child)
  end
end


# negative loops
for i in (10).downto(0)
  puts i
end

# depth of a binary tree from node
def depth(node)
  return 0 if node == nil
  [depth(node.left), depth(node.right)].max+1
end


# Read from file in.in
file = File.exist?('in.in') ? File.new('in.in','r') : STDIN
t = file.gets.chomp.to_i
x, y =  file.gets.chomp.split.map(&:to_i)