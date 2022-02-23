def reverse_odd(w)
  mid = w.size/2
  fc = w.size%2==0 ? 0 : 1
  for i in 0...mid
    if i%2!= 0
      # puts "#{w[i]} -> #{w[w.size-i-fc]}"
      t = w[i]
      w[i]=w[w.size-i-fc]
      w[w.size-i-fc] = t
    end
  end
  w
end

puts reverse_odd("01234")