arr_example = [1, 2, 4, 5, 77, 10, nil, nil, nil, nil]
n = 5
i = 0
value = gets.chomp.to_i

i += 1 while i <= n && value != arr_example[i]
if i > n
  p 'No se encontró el valor buscado'
else
  (i..n).to_a.each { |k| arr_example[k] = arr_example[k + 1] }
  p arr_example
  n -= 1
end