arr_example = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]

def binary_search_iterative(arr, value)
  low = 0                               # c(1)
  higher = arr.size - 1                 # c(1)
  while low != higher                   # c(n/2)
    middle = (higher + low) / 2
    left_arr = arr[low..middle]

    if value <= left_arr.last
      higher = middle
    else
      low = middle + 1
    end

  end
  arr[higher] == value ? higher : -1
end

def binary_search_recursive(arr, value, low = 0, high = -1)
  if arr[low..high].size <= 1
    return arr[high] == value ? high : -1
  end

  if high <= 0
    high = arr.size - 1
  end

  middle = (high + low) / 2
  left_arr = arr[low..middle]

  if value <= left_arr.last
    binary_search_recursive(arr, value, low, middle)
  else
    binary_search_recursive(arr, value, middle + 1, high)
  end
end


# index_search = binary_search_iterative(arr_example, 14)
# p index_search

p binary_search_recursive(arr_example, 14)
