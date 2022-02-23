require 'pry-byebug'

# @param {String} num
# @param {Integer} k
# @return {String}
def remove_kdigits(num, k)
  return "0" if k == num.size

  i = 1
  while k > 0 && i < num.size
    # puts "#{num[i-1]} - #{num[i]}"

    if num[i-1] > num[i]
      num.slice!(i-1)
      num = num.to_i.to_s
      k-=1
    else
      i+=1
    end
  end

  if k > 0
    num = num[0...-1*k]
  end

  return "0" if num == ""
  num
end


puts remove_kdigits("52660469", 2)

# 52660469
# 2660469
# "260469"

