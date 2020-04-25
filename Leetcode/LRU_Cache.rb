require 'pry-byebug'

class LRUCache
  def initialize(capacity)
    @capacity = capacity
    @cache = {}
  end

  def get(key)
    val = @cache[key]
    if val
      @cache.delete(key)
      @cache[key] = val
    else
      -1
    end
  end

  def put(key, value)
    @cache.delete(key) if @cache[key]
    @cache[key] = value

    @cache.shift if @cache.size > @capacity
  end
end

cache = LRUCache.new(2);

cache.put(1, 1);
cache.put(2, 2);
puts cache.get(1);       #// returns 1
# cache.print
cache.put(3, 3);    #// evicts key 2
# cache.print
puts cache.get(2);       #// returns -1 (not found)
cache.put(4, 4);    #// evicts key 1
# cache.print
puts cache.get(1);       #// returns -1 (not found)
puts cache.get(3);       #// returns 3
puts cache.get(4);       #// returns 4