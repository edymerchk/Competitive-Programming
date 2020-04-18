# @param {String} s
# @param {Integer[][]} shift
# @return {String}
require 'pry-byebug'

def string_shift(s, shift)
  l = 0
  r = 0
  shift.each do |sh|
    if sh[0]==0
      l+=sh[1]
    else
      r+=sh[1]
    end
  end
  puts "#{l} #{r}"
  res = ""
  if(l>r)
    #fill
  elsif r>l
    x = (r-l) % s.size
    s.size.times do |i|
      binding.pry
      res << s[]
    end
  else
    res = s
  end
  res
end


# s = "abcdefg"
# shift = [[1,1],[1,1],[0,2],[1,3]]

s = "abc", shift = [[0,1],[1,2]]
puts string_shift(s, shift)