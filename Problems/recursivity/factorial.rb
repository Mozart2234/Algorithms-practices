def factorial(n)
  return 1 if n == 1

  n * factorial(n - 1)
end

1.upto(10).each do |i|
  puts factorial(i)
end
