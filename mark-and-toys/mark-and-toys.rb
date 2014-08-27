n, money = gets.split(/\s/).map(&:to_i)
prices = gets.split(/\s/).map(&:to_i).sort
spent = 0
res = 0
prices.each do |p|
  if (spent + p) <= money
    spent+=p
    res+=1
  else
    break
  end
end
puts res