class Stack
  def initialize(capacity)
    @stacks = [[]]
    @capacity = capacity
    @current = 0
  end

  def current_stack
    @stacks[@current]
  end

  def increase_if_needed
    return unless current_stack.size == @capacity
    @stacks << []
    @current+=1
  end

  def decrease_if_needed
    return if current_stack.size != 0
    return if  @stacks.size == 1

    @stacks.slice!(-1)
    @current-=1
  end

  def push(e)
    increase_if_needed

    current_stack.push(e)
    print
  end

  def pop
    current_stack.pop
    decrease_if_needed
    print
  end

  def print
    puts "#{@stacks}"
  end
end


s = Stack.new(2)
s.push(1)
s.push(2)

puts s.pop
puts s.pop
puts s.pop

s.push(1)
