def decreasing_insert_sort(arr)
  (1..arr.length - 1).each do |j|
    val = arr[j]
    i = j - 1
    while i >= 0 && arr[i] < val
      arr[i + 1] = arr[i]
      i -= 1
    end
    arr[i + 1] = val

  end
  arr
end

p decreasing_insert_sort([31, 41, 59, 26, 41, 58])
