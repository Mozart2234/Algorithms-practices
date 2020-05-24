def insertion_sort(arr)
  (1..arr.length - 1).each do |j|
    key = arr[j]
    i = j - 1
    while i >= 0 && arr[i] > key
      arr[i + 1] = arr[i]
      i -= 1
    end
    arr[i + 1] = key
  end
  arr
end

print insertion_sort([5, 2, 4, 6, 1, 3, 8])
