# Fibonacci

def fib_r(a, b, n)
  n == 0 ? a : fib_r(b, a + b, n - 1)
end

def fib(n)
  fib_r(0, 1, n)
end

# visit left, up, right, down neighbors

DX = [0, 1, 0, -1]
DY = [1, 0, -1, 0]
4.times do |i|
  puts "#{DX[i]} #{DY[i]}"
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