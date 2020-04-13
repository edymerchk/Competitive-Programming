#!/bin/ruby
require 'pry-byebug'

s = gets.strip
t = gets.strip
k = gets.strip.to_i


if s == t
  if k >= (s.size * 2)
    puts "Yes"
  else
    if k.even?
      puts "Yes"
    else
      puts "No"
    end
  end
else

  if s.size > t.size
    large = s
    small = t
  else
    large = t
    small = s
  end

  large.size.times do |i|
    if large[i] != small[i]
      rchanges = large.size - i + small.size - i
      if rchanges == k
        puts "Yes"
      elsif k < rchanges
        puts "No"
      else
        if (k-rchanges).even?
          puts "Yes"
        else
          if k-rchanges > i
            puts "Yes"
          else
            puts "No"
          end
        end
      end
      break
    end
  end
end
