# https://www.hackerrank.com/challenges/repeated-string

s = gets.rstrip.split('')
n = gets.to_i

res = 0
s.each do |l|
  res += 1 if l == "a"
end

mult = n/s.size

res = res * mult

mod = n%s.size

mod.times do |i|
  res += 1 if s[i] == "a"
end

puts res
