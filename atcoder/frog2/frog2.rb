file = File.exist?('in.in') ? File.new('in.in','r') : STDIN
n, k = file.gets.chomp.split.map(&:to_i)
vec = file.gets.chomp.split.map(&:to_i)

INF = 4611686018427387903
dp = Array.new(n, INF)

dp[0] = 0

for i in 1...vec.size
  j=1
  while(j<=k && i-j >= 0)
    c = dp[i-j]+(vec[i-j]- vec[i]).abs
    dp[i] = c if c < dp[i]
    j+=1
  end
end

puts dp.last
