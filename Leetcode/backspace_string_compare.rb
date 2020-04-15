# https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/529/week-2/3291/

# @param {String} s
# @param {String} t
# @return {Boolean}

def solve(str)
  res = []
  str.split('').each do |e|
    if e != "#"
      res << e
    elsif res.size > 0
      res.pop
    end
  end
  res
end

def backspace_compare(s, t)
  solve(s) == solve(t)
end


puts backspace_compare("ab#c", "ad#c")
puts backspace_compare("ab##", "c#d#")
puts backspace_compare("a##c", "#a#c")
puts backspace_compare("a#c", "b")