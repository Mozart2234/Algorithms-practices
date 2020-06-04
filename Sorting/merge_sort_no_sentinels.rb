example_arr = [10, 24, 76, 73, 72, 1, 9, 23, 24, 100]

def merge_sort(arr)
  size_arr = arr.size
  return arr if size_arr <= 1

  last_position = size_arr - 1
  center = ((size_arr - 1) / 2)
  left_arr = merge_sort(arr[0..center])
  right_arr = merge_sort(arr[center + 1..last_position])
  merge(left_arr, right_arr)
end

def merge(left_arr, right_arr)
  arr = []
  i = 0
  j = 0
  while i < left_arr.size && j < right_arr.size
    if left_arr[i] <= right_arr[j]
      arr << left_arr[i]
      i += 1
    else
      arr << right_arr[j]
      j += 1
    end
  end

  while i < left_arr.size
    arr << left_arr[i]
    i += 1
  end

  while j < right_arr.size
    arr << right_arr[j]
    j += 1
  end
  arr
end

p merge_sort(example_arr)
