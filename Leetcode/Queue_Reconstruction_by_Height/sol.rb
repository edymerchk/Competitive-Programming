require 'pry-byebug'
# @param {Integer[][]} people
# @return {Integer[][]}
def reconstruct_queue(people)
  res = []
  people.sort! do |a, b|
    a[0] == b[0] ? a[1] - b[1] : b[0] - a[0]
  end

  people.each do |p|
    res.insert(p[1], p)
  end
  res
end

puts "#{reconstruct_queue([[7,0], [4,4], [7,1], [5,0], [6,1], [5,2]])}"

