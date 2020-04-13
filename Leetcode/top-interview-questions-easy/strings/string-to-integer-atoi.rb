# https://leetcode.com/problems/string-to-integer-atoi/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/884/

# @param {String} str
# @return {Integer}
def my_atoi(str)
  original = str
  str = str.strip

  return 0 if str.size == 0

  return 0 if !(str[0].ord >= 48 && str[0].ord <= 57) && str[0].ord != 43 && str[0].ord != 45

  num = []
  for i in 0..str.size-1
    if !(str[i].ord >= 48 && str[i].ord <= 57) && str[i].ord != 43 && str[i].ord != 45
      break
    else
      num << str[i]
    end
  end

  return original if num.size == 0

  num = num.join('').to_i

  if num > ((2**31)-1) || num < ((2**31)*-1)
    if num > 0
      return (2**31)-1
    else
      return (2**31)*-1
    end
  end

  num
end



puts my_atoi("   -42")
puts my_atoi("4193 with words")
puts my_atoi("words and 987")
puts my_atoi("-91283472332")
puts my_atoi("")
