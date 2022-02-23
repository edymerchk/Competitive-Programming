class FirstUnique
  def initialize(nums)
    @queue =nums
    @uniques = {}
    fill_uniques
  end

  def fill_uniques
    @queue.each_with_index do |num, idx|
      update_uniques(num, idx)
    end
  end

  def update_uniques(num, idx)
    if @uniques[num]
      @uniques[num] = -1
    else
      @uniques[num] = idx
    end
  end

  def show_first_unique
    first_idx = @uniques.find {|k,v| v!=-1}
    return -1 if first_idx == nil
    @queue[first_idx.last]
  end

  def add(value)
    @queue.push(value)
    update_uniques(value, @queue.size-1)
  end
end

# Your FirstUnique object will be instantiated and called as such:
obj = FirstUnique.new([2,3,5])
puts obj.show_first_unique #// return 2
obj.add(5)            #// the queue is now [2,3,5,5]
puts obj.show_first_unique #// return 2
obj.add(2)            #// the queue is now [2,3,5,5,2]
puts obj.show_first_unique #// return 3
obj.add(3)            #// the queue is now [2,3,5,5,2,3]
puts obj.show_first_unique #// return -1