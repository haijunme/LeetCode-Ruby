def fib(n)
  if n < 2
    return n;
  end
  memo = Array.new(n + 1, 0)
  memo[0] = 0
  memo[1] = 1
  (2..n).each do |counter|
    memo[counter] = memo[counter - 1] + memo[counter - 2]
  end

  memo[n]
end

puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
