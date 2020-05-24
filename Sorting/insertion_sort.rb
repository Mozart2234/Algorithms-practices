def insertion_sort(arr)
  (1..arr.length - 1).each do |j|
    current_val = arr[j]
    i = j - 1
    while i >= 0 && arr[i] > current_val
      arr[i + 1] = arr[i]
      i -= 1
    end
    arr[i + 1] = current_val
  end
  arr
end

print insertion_sort([5, 2, 4, 6, 1, 3, 8])
