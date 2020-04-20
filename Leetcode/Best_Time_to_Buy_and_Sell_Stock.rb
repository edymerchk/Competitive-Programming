require 'pry-byebug'

# @param {Integer[]} prices
# @return {Integer}
INF = 4611686018427387903
def max_profit(prices)
  max = 0
  dp = Array.new(prices.size, INF)
  dp[0]=prices[0]
  min = INF
  for i in 0..prices.size-1
    dp[i] = [min, prices[i]].min
    min=dp[i]
    dp[i]=prices[i]-dp[i]
  end
  dp.max
end

# puts max_profit([9,7,1,5,3,6,4])
puts max_profit([7,6,4,3,1])