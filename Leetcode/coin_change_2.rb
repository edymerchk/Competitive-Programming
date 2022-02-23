# @param {Integer} amount
# @param {Integer[]} coins
# @return {Integer}
require 'pry-byebug'

def change(amount, coins)
  dp = Array.new(amount+1, 0)
  dp[0] = 1
  coins.each do |cu|
    for i in cu..amount
      dp[i]+=dp[i-cu]
    end
  end
  dp[amount]
end


puts change(5, [1,2,5])