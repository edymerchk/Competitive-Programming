# @param {Integer[]} bloom_day
# @param {Integer} m
# @param {Integer} k
# @return {Integer}
def min_days(bloom_day, m, k)

  c = []
  k.times do |i|
    c << bloom_day[i]
  end
  puts c

end

puts min_days([7,7,7,7,12,7,7], 2, 3)

