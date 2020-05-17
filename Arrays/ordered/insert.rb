require_relative './utils/search.rb'

actual_index = 5
arr_example = [1, 2, 4, 5, 8, 10, nil, nil, nil, nil, nil]

puts "Current array #{arr_example[0..actual_index]}"
puts 'Insert a value for insert'
inserted_value = gets.chomp.to_i

if actual_index < 10
  pos = search(arr_example, actual_index, inserted_value)
  if pos.positive?
    p 'El elemento ya existe'
  else
    actual_index += 1
    pos *= -1
    actual_index.downto(pos).each { |i| arr_example[i] = arr_example[i - 1] }
    arr_example[pos] = inserted_value
  end
end

puts "New array #{arr_example[0..actual_index]}"
