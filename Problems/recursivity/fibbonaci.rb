def fib(num)
  return 0 if num == 1

  return 1 if [2, 3].include?(num)

  fib(num - 1) + fib(num - 2)
end

1.upto(10).each do |i|
  puts fib(i)
end
