require 'pry-byebug'
file = File.exist?('in.in') ? File.new('in.in','r') : STDIN
n = file.gets.chomp.to_i

data = Array.new(n)
dp = Array.new(n) { Array.new(3, 0) }
n.times do |i|
  data[i] = file.gets.chomp.split.map(&:to_i)
end

dp[0][0] = data[0][0]
dp[0][1] = data[0][1]
dp[0][2] = data[0][2]

for i in 1...n
  dp[i][0]=[dp[i-1][1], dp[i-1][2]].max + data[i][0]
  dp[i][1]=[dp[i-1][0], dp[i-1][2]].max + data[i][1]
  dp[i][2]=[dp[i-1][0], dp[i-1][1]].max + data[i][2]
end

puts dp.last.max