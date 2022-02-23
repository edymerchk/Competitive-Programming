def cellCompete(states, days)
  res = []
  states.unshift(0)
  states.push(0)
  days = (days%14) if days > 14

  days.times do
      new_states = Array.new(states.size, 0)
      for i in 1..states.size-2
          if states[i-1] == states[i+1]
              new_states[i]=0
          else
              new_states[i]=1
          end
      end
      states = new_states
  end
  states[1..-2]
end


100.times do |i|
  print "#{i+1}: #{cellCompete([1,0,0,0,0,1,0,0], i+1)}"
  print "\n"
end

# puts "#{cellCompete([1,0,0,0,0,1,0,0], 2)}"
# puts "#{cellCompete([1,0,0,0,0,1,0,0], 16)}"
# puts "#{cellCompete([1,0,0,0,0,1,0,0], 86)}"