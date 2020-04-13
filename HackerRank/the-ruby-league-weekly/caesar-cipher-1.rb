
# z => 122
# a => 97
# Z => 90
# A => 65

n = gets.strip.to_i
s = gets.strip
k = gets.strip.to_i


sol = s.split('').map do |l|
  if l =~ /[A-Za-z]/
    next_l = l.ord+k
    if l =~ /[a-z]/
      while next_l > 122
        next_l = next_l - 122 + 96
      end
    end
    if l =~ /[A-Z]/
      while next_l > 90
        next_l = next_l - 90 + 64
      end
    end
    (next_l).chr
  else
    l
  end
end.join

puts sol
