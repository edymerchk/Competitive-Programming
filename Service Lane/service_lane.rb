def solve(i,o)
  min = @lane[i]
  while i <= o
    min = @lane[i] if @lane[i] < min
    break if min == 1
    i+=1
  end
  puts min
end

arr = gets.chomp.split
n = arr[0].to_i
t = arr[1].to_i
@lane =  gets.chomp.split.collect{|e| e.to_i}

t.times do
  arr = gets.chomp.split
  solve(arr[0].to_i, arr[1].to_i)
end



