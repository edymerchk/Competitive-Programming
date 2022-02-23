# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
  for i in 0...prices.size
    j = i+1
    while j <= prices.size-1
      if prices[j] <= prices[i]
        prices[i] = prices[i]-prices[j]
        break
      end
      j+=1
    end
  end
  prices
end


prices = [10,1,1,6]
puts "#{final_prices(prices)}"