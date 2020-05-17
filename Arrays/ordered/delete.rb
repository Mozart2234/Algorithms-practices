# frozen_string_literal: true
require_relative './utils/search.rb'

next_index = 5
arr_example = [1, 2, 4, 5, 8, 10, nil, nil, nil, nil, nil]

puts "Current array #{arr_example[0..next_index]}"
puts 'Insert a value for delete'
delete_value = gets.chomp.to_i

if next_index.positive?
  pos = search(arr_example, next_index, delete_value)
  if pos.negative?
    p 'The element doesnt exists'
  else
    next_index -= 1
    (pos..next_index).each { |i| arr_example[i] = arr_example[i + 1] }
  end
else
  p 'The array is empty!'
end

puts "New array #{arr_example[0..next_index]}"
