require 'pry-byebug' #TODO: remove

def reorderLines(logFileSize, logLines)
  res = []
  others =[]
  to_order = []
  # puts compare("a1 abc a", "x1 abc b")
  logLines.each do |line|
      first_w = line.split(' ')[1]
      if first_w.to_i.to_s == first_w
          others << line
      else
          to_order << line
      end
  end

  # bubble sort

  sw = true
  n = to_order.size
  while sw
      sw = false
      (n-1).times do |i|
          binding.pry
          if compare(to_order[i], to_order[i+1] ) == to_order[i]
              to_order[i], to_order[i+1] = to_order[i+1], to_order[i]
              sw= true
          end
      end
  end


  puts "#{to_order}"
  puts "#{others}"

end


# return bigger
def compare(w1o, w2o)
  big = w2o
  w1 = w1o.split(' ')
  w2 = w2o.split(' ')

  id1=w1[0]
  id2=w2[0]

  w1=w1[1..-1].join().gsub(' ', '')
  w2=w2[1..-1].join().gsub(' ', '')

  for i in 0...w1.size
      if w1[i] > w2[i]
          big = w1o
          break
      end
  end
  big
end

# array= [
#   "mi2 job mid pet",
#   "wz3 34 54 398",
#   "a1 alps cow bar",
#   "x4 45 21 7",
# ]
# puts reorderLines(4, array)

