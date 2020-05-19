# frozen_string_literal: true

require_relative './utils/search.rb'

actual_index = 5
arr_example = [1, 2, 4, 5, 8, 10, nil, nil, nil, nil, nil]

puts "Current array #{arr_example[0..actual_index]}"
puts 'Insert a value for modify : '
search_value = gets.chomp.to_i

if actual_index.positive?
  pos_search = search(arr_example, actual_index, search_value)
  if pos_search.negative?
    p 'The element doesnt exists'
  else
    # Delete element
    actual_index -= 1
    (pos_search..actual_index).each { |i| arr_example[i] = arr_example[i + 1] }

    puts 'Insert a new value: '
    replace_value = gets.chomp.to_i

    # Insert new element in the right order
    pos = search(arr_example, actual_index, replace_value)
    if pos.negative?
      actual_index += 1
      pos *= -1
      actual_index.downto(pos).each { |i| arr_example[i] = arr_example[i - 1] }
      arr_example[pos] = replace_value
    end
  end
else
  p 'The array is empty!'
end

puts "New array #{arr_example[0..actual_index]}"
puts "New index position #{actual_index}"
