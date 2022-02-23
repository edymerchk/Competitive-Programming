require 'pry-byebug'

# @param {Integer[]} prices
# @return {Integer}
INF = 4611686018427387903
def max_profit(prices)
  max = 0
  dp = Array.new(prices.size, INF)
  buy = Array.new(prices.size)
  dp[0]=prices[0]
  min = INF
  for i in 0..prices.size-1
    dp[i] = [min, prices[i]].min
    min=dp[i]
    dp[i]=prices[i]-dp[i]
    buy[i]=min
  end
  buy[dp.index(dp.max)]
end

puts max_profit([6,2,2,6,3,8,12,1,1])
# puts max_profit([9,7,1,5,3,6,4])
# puts max_profit([7,6,4,3,1])