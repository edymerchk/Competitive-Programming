file = File.exist?('in.in') ? File.new('in.in','r') : STDIN
n = file.gets.chomp.to_i
vec = file.gets.chomp.split.map(&:to_i)

dp = Array.new(n)

dp[0] = 0
dp[1] = (vec[0]-vec[1]).abs

for i in 2...vec.size
  ant = dp[i-1]+(vec[i-1]-vec[i]).abs
  ant2 = dp[i-2]+(vec[i-2]-vec[i]).abs
  dp[i]= [ant, ant2].min
end

puts dp.last
