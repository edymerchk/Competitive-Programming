# https://leetcode.com/problems/coin-change/

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}



INF = 4611686018427387903

def coin_change(coins, amount)
  values = Array.new(amount+1, INF)
  values[0] = 0
  for i in 1..amount
    coins.each do |c|
      if i-c >= 0
        values[i]=[values[i], values[i-c]+1].min
      end
    end
  end
  res = values[amount]
  return res == INF ? -1 : res
end

puts coin_change([2], 3)
# puts coin_change([1, 3, 4 ], 10)

# 11.times do |i|
#   puts "#{i+1}: #{coin_change([1, 3, 4], i+1)}"
# end
