example_arr = [5, 2, 4, 6, 1, 3, 8]

def selection_sort(arr)
  arr.each_index do |i|
    lowest = i
    ((i + 1)...arr.length).each do |j|
      if arr[j] <= arr[lowest]
        lowest = j
      end
    end
    temp = arr[i]
    arr[i] = arr[lowest]
    arr[lowest] = temp
  end
  arr
end

p selection_sort(example_arr)
