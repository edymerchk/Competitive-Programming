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


# prefix sum
a = [1, 2, 3, 4]
a.inject([]) { |x, y| x + [(x.last || 0) + y] }
# => [1, 3, 6, 10]


# sort by first DESC, then second ASC
vec = [[1,2],[1,1],[1,3],[2,1]]
vec.sort! do |a, b|
  a[0] == b[0] ? a[1] - b[1] : b[0] - a[0]
end



# binary search
left = 0
right = nums.size - 1
while left <= right do
    mid = (right - left) / 2 + left
    if nums[mid] == target
        return mid
    elsif target > nums[mid]
        left = mid + 1
    else
        right = mid - 1
    end
end
left


# ranges_overlap?
def ranges_overlap?(r1, r2)
  r2.begin <= r1.end && r1.begin <= r2.end
end
# also
(1..30).cover?(2..3)
#=> true


# test_it methods
def test_it(a,b, expected)
  result = fn_sum(a,b)

  if result == expected
    puts "GREEN"
  else
    puts "RED, expected: #{expected}, found: #{result}"
  end
end
