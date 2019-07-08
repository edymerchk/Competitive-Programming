# https://www.hackerrank.com/challenges/jumping-on-the-clouds

n = gets.to_i
clouds = gets.rstrip.split(' ').map(&:to_i)

jumps = 0

i = 0
while i < n
  if clouds[i+2] == 0
    i +=2
  else
    i +=1
  end
  jumps += 1
end
puts jumps-1
