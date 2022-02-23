def fizzBuzz(n)
  map =  {3 =>  "Fizz", 5 => "Buzz"}
  for i in 1..n
    res = ""
    map.each do |k,v|
      res += v if i % k == 0
    end
    res = i if res == ""
    puts res
  end
end


fizzBuzz(15)