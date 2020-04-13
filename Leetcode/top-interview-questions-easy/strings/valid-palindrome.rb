# https://leetcode.com/problems/valid-palindrome/
# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/883/


# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  return true if s.size == 0

  clean = []
  for i in 0..s.size-1
    if (s[i].ord >= 48 && s[i].ord <= 57) || (s[i].ord >= 65 && s[i].ord <= 90) || (s[i].ord >= 97 && s[i].ord <= 122)
      clean << s[i].downcase
    end
  end

  # puts "#{clean}"

  j = clean.size-1
  for i in 0..clean.size/2
    return false if clean[i] != clean[j]
    j -=1
  end
  true
end


puts is_palindrome("A man, a plan, x canal: Panamx")
