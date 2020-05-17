require_relative './utils/search.rb'

next_index = 5
arr_example = [1, 2, 4, 5, 8, 10, nil, nil, nil, nil, nil]

puts "Current array #{arr_example[0..next_index]}"
puts 'Insert a value for insert'
inserted_value = gets.chomp.to_i

if next_index < 10
  pos = search(arr_example, next_index, inserted_value)
  if pos.positive?
    p 'El elemento ya existe'
  else
    next_index += 1
    pos *= -1
    next_index.downto(pos).each { |i| arr_example[i] = arr_example[i - 1] }
    arr_example[pos] = inserted_value
  end
end

puts "New array #{arr_example[0..next_index]}"
