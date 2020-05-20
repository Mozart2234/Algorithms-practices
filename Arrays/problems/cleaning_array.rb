# Clear array whithout using a array helper methods in ruby

arr = [1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 8, 10, 10, 44, 45, 55]
p "Arr no cleaning -> #{arr}"
def delete_element(arr, pos)
  pos.upto(arr.size - 1).each do |i|
    arr[i] = arr[i + 1]
  end
  arr.pop
  arr
end

i = 0
while i < arr.size - 1
  if arr[i] < arr[i + 1]
    i += 1
  else
    arr = delete_element(arr, i)
  end
end

p "New Array #{arr}"
