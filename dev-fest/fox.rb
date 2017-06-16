n = gets.chomp.to_i

n.times do
  sounds = gets.chomp.split
  while true
    line = gets.chomp
    break if line == "what does the fox say?"
    sounds.delete(line.split[2])
  end
  puts sounds.join(" ")
end
