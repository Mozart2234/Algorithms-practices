def zero_matrix(arr)
  size_y = arr.size
  size_x = arr[0].size
  
  positions = []
  arr.each_index do |y|
    arr[0].each_index do |x|
      next if arr[y][x] != 0
      
      positions << [x, y]
    end
  end
  positions.each do |position|
    arr = change_zeros(arr, position, size_x, size_y)
  end
  arr
end

def change_zeros(arr, position, size_x, size_y)
  tmp_x = 0
  tmp_y = 0
  x = position[0]
  y = position[1]
  while tmp_x < size_x || tmp_y < size_y
    if tmp_y < size_y && arr[tmp_y][x] != 0
      arr[tmp_y][x] = 0
    end

    if tmp_x < size_x && arr[y][tmp_x] != 0
      arr[y][tmp_x] = 0
    end

    tmp_x += 1
    tmp_y += 1
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
  [1, 0, 4, 5],
  [1, 1, 1, 7],
  [1, 2, 6, 0]
]

prev_arr(arr)

print "\n"

prev_arr(zero_matrix(arr))
