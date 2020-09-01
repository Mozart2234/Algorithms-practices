def zero_matrix(arr)
  size_y = arr.size
  size_x = arr[0].size
  
  row = Array.new(size_y, false)
  column = Array.new(size_x, false)

  arr.each_index do |y|
    arr[0].each_index do |x|
      next if arr[y][x] != 0

      row[y] = true
      column[x] = true
    end
  end

  arr = nullify_rows(arr, row)

  arr = nullify_columns(arr, column)

  arr
end

def nullify_rows(arr, row)
  row.each_with_index do |status, r|
    next unless status
    (0...arr[0].size).each do |i|
      arr[r][i] = 0
    end
  end

  arr 
end

def nullify_columns(arr, column)
  column.each_with_index do |status, col|
    next unless status

    (0...arr.size).each do |i|
      arr[i][col] = 0
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
  [1, 0, 4, 5],
  [1, 1, 1, 7],
  [1, 2, 6, 0]
]

prev_arr(arr)

print "\n"

prev_arr(zero_matrix(arr))
