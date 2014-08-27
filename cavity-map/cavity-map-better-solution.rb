#This solution its not mine

n = gets.to_i
m = n.times.map{gets.chomp.chars.to_a}
(1...(n-1)).each{|i|
(1...(n-1)).each{|j|
    if [[0, -1], [0, 1], [-1, 0], [1, 0]].all?{ |x, y|
        m[i+x][j+y] < m[i][j]}
        m[i][j] = 'X'
    end
}
}
puts m.map{|s|s*''}*"\n"
