# def fib_r(a, b, n)
#   n == 0 ? a : fib_r(b, a + b, n - 1)
# end

# def fib(n)
#   fib_r(0, 1, n)
# end



def fib(n)
  f0, f1 = [0, 1]
  (n ).times do
    f0, f1 = f1, f0 + f1
  end
  f0
end

puts fib(8)