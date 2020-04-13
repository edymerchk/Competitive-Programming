# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/564/
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  for i in 0..prices.size-2
    if prices[i+1] > prices[i]
      profit += prices[i+1]-prices[i]
    end
  end
  profit
end

# puts max_profit([7,1,5,3,6,4])
# puts max_profit([1,2,3,4,5])
