# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  min = [str1.size, str2.size].min
  max = [str1.size, str2.size].max
  if str1.size > str2.size
    u = str1
    l = str2
  else
    l = str1
    u = str2
  end
  i = l.size-1
  while i>=1
    test = l[0..i]
    # puts "testing #{test}"
    k = 0
    works = false
    while(k < max)
      if u[k...k+test.size] != test || (l[k...k+test.size]!= test && l[k...k+test.size]!="" && l[k...k+test.size]!=nil)
        res = ""
        # puts "break"
        break
      end
      k = k+test.size
    end
    if k>=max
      works=true
      break
    end
    i-=1
  end
  if works
    return test
  else
    return ""
  end
end



str1 = "TAUXXTAUXXTAUXXTAUXXTAUXX"
str2 = "TAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXX"


puts gcd_of_strings(str1, str2)