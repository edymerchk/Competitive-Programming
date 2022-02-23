

# def increment(vec)
#   i = vec.size-1

#   while i>=0
#     if vec[i] == 9
#       vec[i]=0
#     else
#       vec[i]+=1
#       break
#     end
#     vec.unshift(1) if i == 0 && vec[0] == 0
#     i-=1
#   end
#   vec
# end


# puts "#{increment([1,2,3])}"
# puts "#{increment([1,0,3,9])}"
# puts "#{increment([1,0,9,9])}"
# puts "#{increment([9,9,9])}"
# puts "#{increment([9])}"
# puts "#{increment([])}"




def increment_by(vec, x)
  i = vec.size-1

  while i>=0
    sum = vec[i]+x
    if sum > 9
      mod = sum%10
      vec[i]=mod
      x = (sum-mod)/10
    else
      vec[i]+=x
      break
    end
    vec = x.to_s.split('').map(&:to_i) + vec if i == 0 && x > 0
    i-=1
  end
  vec
end


puts "#{increment_by([1,0,8], 200)}"
puts "#{increment_by([9,9,9], 9999)}"
