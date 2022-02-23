# require 'pry-byebug'
file = File.exist?('in.in') ? File.new('in.in','r') : STDIN
t = file.gets.chomp.to_i
t.times do
  n, m = file.gets.chomp.split.map(&:to_i)
  if (n == 1 || m == 1) || (n==2 && m == 2)
    puts "YES"
  else
    puts "NO"
  end
end