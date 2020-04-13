# A. Array with Odd Sum

t = gets.chomp.to_i
t.times do
  diff = odd = even =  false
  n = gets.chomp.to_i
  array = gets.split.map(&:to_i)
  first = array[0]
  array.each do  |e|
    odd = true if e%2!=0
    even = true if e%2==0
  end

  if n%2==0 && !even
    puts "NO"
  elsif n%2==0 && !odd
    puts "NO"
  elsif n%2!=0 && !odd
    puts "NO"
  else
    puts "YES"
  end
end


