l = gets.chomp.to_i
r = gets.chomp.to_i
puts (l..r).to_a.combination(2).map{|x, y| x^y}.max