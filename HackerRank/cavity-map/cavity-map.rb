n = gets.chomp.to_i
m = []
n.times do |i|
  m[i] = gets.chomp.split('').map(&:to_i).to_a
end


for i in 1..n-2
  for j in 1..n-2
    val = m[i][j]
    begin
      m[i][j] = 'X' if m[i][j+1] < val and m[i+1][j] < val and m[i][j-1] < val and m[i-1][j] < val
    rescue Exception => e

    end

  end
end

for i in 0..n-1
  for j in 0..n-1
    print m[i][j]
  end
  puts ""
end
