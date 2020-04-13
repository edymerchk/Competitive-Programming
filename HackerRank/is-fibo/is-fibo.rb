t = gets.chomp.to_i
fibbonacci = Hash.new do |accumulator, index|
  accumulator[index] = fibbonacci[index - 2] + fibbonacci[index - 1]
end.update(0 => 0, 1 => 1)

# fibbonacci[50] = 12586269025
# 12586269025 < 10 ** 10
last = fibbonacci[50]
t.times do
  puts fibbonacci.key(gets.chomp.to_i) ? "IsFibo" : "IsNotFibo"
end