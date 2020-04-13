# https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3284/

# @param {Integer} n
# @return {Boolean}

def next_v(n)
  n.to_s.split('').map(&:to_i).map{|e| e ** 2}.sum
end

def is_happy(n)
  hash = {}
  while(n!=1 && hash[n].nil?)do
    hash[n] = next_v(n)
    n = hash[n]
  end
  n==1
end


puts is_happy(19)