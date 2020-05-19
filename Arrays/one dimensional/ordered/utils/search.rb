# frozen_string_literal: true

def search(arr, next_index, search_value)
  index = 0
  index += 1 while index <= next_index && arr[index] < search_value

  index > next_index || arr[index] > search_value ? -index : index
end
