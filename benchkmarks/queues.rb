require 'benchmark/ips'

ruby_queue = Queue.new
array = []

100_000_000_0.times do |i|
  ruby_queue.push(i)
  array.push(i)
end

Benchmark.ips do |x|
  x.report("ruby_queue") { ruby_queue.pop }
  x.report("array")  { array.pop  }

  x.compare!
end