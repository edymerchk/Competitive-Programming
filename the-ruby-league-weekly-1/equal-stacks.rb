#!/bin/ruby
require 'pry-byebug'

n1,n2,n3 = gets.strip.split(' ')
n1 = n1.to_i
n2 = n2.to_i
n3 = n3.to_i
h1 = gets.strip
h1 = h1.split(' ').map(&:to_i)
h2 = gets.strip
h2 = h2.split(' ').map(&:to_i)
h3 = gets.strip
h3 = h3.split(' ').map(&:to_i)


s1 =  h1.inject(:+)
s2 =  h2.inject(:+)
s3 =  h3.inject(:+)

puts 0 if s1 == 0 || s2 == 0 || s3 == 0

i = 0
while s1 != s2 && s2 != s3 && s1 != s3
  max = [s1,s2,s3].max
  if s1 == max
    h1.size.times do |k|
      if h1[k]!=0
        h1[k]=0
        break
      end
    end
  elsif s2 == max
    h2.size.times do |k|
      if h2[k]!=0
        h2[k]=0
        break
      end
    end
  else s3 == max
    h3.size.times do |k|
      if h3[k]!=0
        h3[k]=0
        break
      end
    end
  end
  i = i + 1

  s1 =  h1.inject(:+)
  s2 =  h2.inject(:+)
  s3 =  h3.inject(:+)
end

puts s1
