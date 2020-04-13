# https://leetcode.com/problems/coin-change/

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}


VALUES = []
INF = 4611686018427387903

def solve(coins, amount)
  return INF if amount < 0
  return 0 if amount == 0
  return VALUES[amount] if VALUES[amount]
  best = INF
  for i in 0..coins.size-1
    best = [solve(coins, amount-coins[i])+1, best].min
  end
  VALUES[amount] = best
  return best
end

def coin_change(coins, amount)
  res = solve(coins, amount)
  return res == INF ? -1 : res
end

puts coin_change([2], 3)

# 11.times do |i|
#   puts "#{i+1}: #{coin_change([1, 3, 4], i+1)}"
# end
