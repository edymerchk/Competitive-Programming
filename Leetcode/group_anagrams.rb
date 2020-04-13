# https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3288/

# @param {String[]} strs
# @return {String[][]}

def sorted(str)
  str.split('').sort.join()
end

def group_anagrams(strs)
  res = [[strs[0]]]
  sorted = [sorted(strs[0])]
  hash = {sorted[0] => 0}

  strs[1..-1].each do |word|
    sw = sorted(word)
    if hash[sw]
      res[hash[sw]] << word
    else
      res << [word]
      hash[sw] = res.size-1
    end
  end
  res
end

puts "#{group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"])}"