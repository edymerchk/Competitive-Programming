# require 'pry-byebug'
file = File.exist?('in.in') ? File.new('in.in','r') : STDIN
t = file.gets.chomp.to_i

@dp = [0, 2]
def pm(h)
  return @dp[h] if @dp[h]
  @dp[h] = pm(h-1)+(3*h)+-1
  @dp[h]
end

h = {}

[*1..100000].each do |i|
  break if pm(i) > 10 **9
  h[pm(i)] = i
end


t.times do
  n = file.gets.chomp.to_i
  if n < 2
    puts 0
    next
  end

  res = 0
  rem = n
  current = n

  while rem > 0 && current > 0
    if h[current]
      res+=1
      rem-=current
      current=n-current
    else
      current-=1
    end
  end
  puts res
end


