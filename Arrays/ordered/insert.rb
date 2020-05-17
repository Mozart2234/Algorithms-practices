require_relative './utils/search.rb'

next_index = 5
arr_example = [1, 2, 4, 5, 8, 10, nil, nil, nil, nil, nil]
SEARCH = 7

if next_index < 10
  pos = search(arr_example, next_index, SEARCH)
  if pos.positive?
    p 'El elemento ya existe'
  else
    next_index += 1
    pos *= -1
    next_index.downto(pos).each { |i| arr_example[i] = arr_example[i - 1] }
    arr_example[pos] = SEARCH
  end
end
