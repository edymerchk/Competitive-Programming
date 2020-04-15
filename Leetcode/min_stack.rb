class MinStack
  def initialize()
    @stack =[]
    @min_stack = []
  end

  def push(x)
    if @min_stack.size == 0
      @min_stack << x
    else
      @min_stack << x if x <= @min_stack.last
    end

    @stack << x
  end

  def pop
    @min_stack.pop if @stack.last == @min_stack.last
    @stack.pop
  end

  def top
    @stack.last
  end

  def get_min
    @min_stack.last
  end
end

# Your MinStack object will be instantiated and called as such:
minStack = MinStack.new
minStack.push(-2)
minStack.push(0)
minStack.push(-3)
puts minStack.get_min()
minStack.pop()
puts minStack.top()
puts minStack.get_min()
