
class Box
  attr_accessor :height, :weight

  def initialize(height, weight)
    @height = height
    @weight = weight
  end
end

class Stack
  def initialize
    @stack = []
  end

  def push(box)

  end
end

Box.new(10, 10)