file = File.exist?('in.in') ? File.new('in.in','r') : STDIN
t = file.gets.chomp.to_i

t.times do
  n, k =  file.gets.chomp.split.map(&:to_i)
  array = file.gets.chomp.split.map(&:to_i)

  if k > n
    puts -1
    next
  end

  if k == 1
    # all the elements should be equal
    if array.uniq.count <=1
      puts n
      puts array.join(" ")
    else
      puts -1
    end
    next
  end

  if n == k
    puts n
    puts array.join(" ")
    next
  end


  res = array[0...k]
  first_size = res.size
  sum = array[0...k].sum
  left = array[k...n]
  initial_left_size = left.size

  i = 1
  bad = false
  while left.size != 0
    if initial_left_size == left.size && res.size  == 2*first_size && res[0...first_size] == res[first_size..-1]
      bad = true
      break
    end
    need = sum - res[i..res.size].sum
    if need == left[0]
      res << left.shift
    else
      res << need
    end
    i+=1
  end
  if bad
     puts -1
  else
    puts res.size
    puts res.join(" ")
  end
end
