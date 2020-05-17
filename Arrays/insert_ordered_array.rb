next_index = 5
arr_example = [1, 2, 4, 5, 8, 10, nil, nil, nil, nil, nil]
SEARCH = 7

def search_secuencial_order(arr, next_index, search_value)
  i = 0
  i += 1 while i <= next_index && arr[i] < search_value

  i > next_index || arr[i] > search_value ? -i : i
end

if next_index < 10
  pos = search_secuencial_order(arr_example, next_index, SEARCH)
  if pos.positive?
    p 'El elemento ya existe'
  else
    next_index += 1
    pos *= -1
    next_index.downto(pos).each { |i| arr_example[i] = arr_example[i - 1] }
    arr_example[pos] = SEARCH
  end
  p arr_example
  p next_index
end
