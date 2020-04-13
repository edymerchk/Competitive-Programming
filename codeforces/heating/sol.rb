# require 'pry-byebug'

n = gets.chomp.to_i
n.times do
  ci, sum = gets.split.map {|x| x.to_i }

  spaces = ci
  array = []
  spaces.times do |i|
    res = (sum/(ci*1.0)).ceil
    array << res
    sum = sum - res
    ci -=1
  end
  puts array.map{|e| e**2}.inject(0, :+)
end
