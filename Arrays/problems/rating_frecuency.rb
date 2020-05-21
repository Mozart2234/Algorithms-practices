ratings = Array.new(50) { rand(1..10) }

def find_in_array(arr, search_number)
  count = 0
  arr.each do |number|
    count+= 1 if search_number == number
  end
  count
end

printf("%-10s %-10s \n", 'Rating', 'Frecuency')
totals = 0
(0..10).to_a.each do |i|
  total = find_in_array(ratings, i)
  totals += total
  printf("%-10d %-10s \n", i, "#{total} Student" )
end
printf("%-10s %-10s\n", "", "#{totals} Students")