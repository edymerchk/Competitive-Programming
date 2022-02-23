require 'pry-byebug'

file = File.exist?('in.in') ? File.new('in.in','r') : STDIN
t = file.gets.chomp.to_i

t.times do
  n = file.gets.chomp.to_i
  people =  file.gets.chomp.split.map(&:to_i)

  min = n
  max = 1
  current=1
  for i in 0..people.size-2

    if people[i+1]-people[i] <=2
      current+=1
      # last round
      if i == people.size-2
        min = [current, min].min
        max = [current, max].max
      end
    else
      # last round
      if i == people.size-2
        min = 1
      end

      min = [current, min].min
      max = [current, max].max
      current = 1
    end
  end
  puts "#{min} #{max}"
end