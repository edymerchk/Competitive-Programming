t = gets.chomp.to_i
t.times do
  n = gets.chomp.to_i
  a = ""
  b = ""
  diff = false
  x = gets.chomp
  for i in 0..n-1
    if x[i] == "2"
      if diff
        a << "0"
        b << "2"
      else
        a << "1"
        b << "1"
      end
    elsif x[i] == "1"
      if diff
        a << "0"
        b << "1"
      else
        a << "1"
        b << "0"
        diff = true
      end
    else
      a << "0"
      b << "0"
    end
  end
  puts a
  puts b
end