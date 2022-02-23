file = File.exist?('in.in') ? File.new('in.in','r') : STDIN

t = file.gets.chomp.to_i
t.times do
  s = file.gets.chomp
  puts s
end