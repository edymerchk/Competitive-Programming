n, t = gets.split.map {|x| x.to_i }
widths = gets.split.map {|x| x.to_i }
t.times do
    i, j = gets.split.map {|x| x.to_i }
    puts widths.slice(i..j).min
end