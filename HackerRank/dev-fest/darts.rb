n = gets.chomp.to_i

n.times do
  res = 0
  d = gets.chomp.to_i
  d.times do
    x, y = gets.split.map(&:to_i)
    rad = Math.sqrt(x**2 + y**2)
    p = 0
    if rad <= (20 * (11-10))
      p = 10
    elsif rad <= (20 * (11-9))
      p = 9
    elsif rad <= (20 * (11-8))
      p = 8
    elsif rad <= (20 * (11-7))
      p = 7
    elsif rad <= (20 * (11-6))
      p = 6
    elsif rad <= (20 * (11-5))
      p = 5
    elsif rad <= (20 * (11-4))
      p = 4
    elsif rad <= (20 * (11-3))
      p = 3
    elsif rad <= (20 * (11-2))
      p = 2
    elsif rad <= (20 * (11-1))
      p = 1
    end
    res += p
  end
  puts res
end

