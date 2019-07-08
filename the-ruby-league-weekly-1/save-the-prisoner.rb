#!/bin/ruby

def saveThePrisoner(n, m, s)
  r = m%n == 0 ? n : m%n
  (r+s-1)%n == 0 ? n : (r+s-1)%n
end

t = gets.strip.to_i
t.times do
    n, m, s = gets.strip.split(' ')
    n = n.to_i
    m = m.to_i
    s = s.to_i
    puts saveThePrisoner(n, m, s)
end
