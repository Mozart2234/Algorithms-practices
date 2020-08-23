def rotate_90_deg(arr)
  return arr if arr.size == 0 || arr.size != arr[0].size
  size = arr.size
  0.upto((size - 1) / 2).each do |layer|
    last = (size - 1) - layer
    (layer...last).each do |i|
      offset = i - layer
      # Save Top in memory
      top = arr[layer][i]

      # Move Left to Top
      arr[layer][i] = arr[last - offset][layer]

      # Move Botttom to left
      arr[last - offset][layer] = arr[last][last - offset]

      # Move Right to Bottom
      arr[last][last - offset] = arr[layer + offset][last]

      # Move Top to Rigth
      arr[layer + offset][last] = top
    end
  end

  arr
end

def prev_arr(arr)
  arr.each_index do |i|
    arr[i].each_index do |j|
      print " |  #{arr[i][j].to_s.center(5)} "
    end
    print "\n"
  end
end

arr = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 16]
]

arr = [
  [1, 2, 3, 4, 5],
  [6, 7, 8, 9, 10],
  [11, 12, 13, 14, 15],
  [16, 17, 18, 19, 20],
  [21, 21, 23, 24, 25]
]
p "Initial Matrix"
prev_arr(arr)
print "----------------------------------------- \n"
prev_arr(rotate_90_deg(arr))
