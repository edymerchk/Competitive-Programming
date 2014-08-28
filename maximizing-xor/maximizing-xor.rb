l = gets.chomp.to_i
r = gets.chomp.to_i

max = 0
t = (r-l)+1
r=l
n = 0
while n < t do
  n +=1
  max = l^r if l^r > max
  r +=1
  if t == n
    n = 0
    t -=1
    l +=1
    r = l
  end
  break if t < 1
end
puts max