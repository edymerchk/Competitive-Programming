n,@k = gets.split.map {|x| x.to_i }
@s = gets.chomp

@m = {}
@k.times do |i|
  @m[i] = {}
end

def miss(array, expec)
  return @s[0] if array.size == 0
  partial = eval(array.join("^"))
  if partial.to_i ^ 1 == expec.to_i
    return  '1'
  else
    return '0'
  end
end

def get_array(col)
  res = []
  @k.times do |i|
    res.push @m[i][col] if @m[i][col]
  end
  res
end


def solve(i)
  array  = get_array(i)
  missed = miss(array, @s[i])
  @k.times do |j|
    @m[j][j+i] = missed
  end
  return missed
end


res = ''
n.times do |i|
  res += solve(i).to_s
end
puts res
