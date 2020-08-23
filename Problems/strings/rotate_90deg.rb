def rotate_90deg(arr)
  new_arr = []
  (arr.size - 1).downto(0).each do |i|
    tmp = []
    (0..arr.size - 1).each do |j|
      tmp << arr[j][i]
    end
    new_arr << tmp
    tmp = []
  end
  new_arr
end

def p_arr(arr)
  arr.each do |i|
    i.each do |j|
      print " | #{j.to_s.center(6)}"
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
p_arr(arr)
new_arr = rotate_90deg(arr)
print "\n"
p_arr(new_arr)
