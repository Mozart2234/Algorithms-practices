touristic_centres = ["Cusco", "Lima", "Arequipa", "Puno"]
type_habitations = [100, 13, 14, 12, 15, 23, 23, 15]
restaurants = [3, 15, 6, 3]

def print_information(touristic_centres, type_habitations, restaurants)
  touristic_centres.each_index do |index|
    p "The #{touristic_centres[index]}, has #{type_habitations[index * 2]} simple rooms, #{type_habitations[index * 2 + 1]} and #{restaurants[index]} resturants"
  end
end

def find_center(touristic_centres, name)
  index = -1
  name = name.to_s.downcase
  touristic_centres.each_index do |i|
    if touristic_centres[i].downcase == name
      index = i
      break
    end
  end
  index
end

def print_names_for_touristics(arr)
  arr.each do |t|
    p t
  end
end

option = -1
loop do
  p ' MENU  '
  p '1. ADD TOURISTIC_CENTRES'
  p '2. TOURISTIC CENTER WITH MORE RESTAURANTS'
  p '3. TOURISTIC CENTER WITH MORE ROOMS'
  p '4. INFO FROM TOURISTIC CENTER'
  p '0. EXIT'

  option = gets.chomp.to_i

  break if option == 0

  case option
  when 1
    p 'Insert the name of touristic center'
    name = gets.chomp
    p 'Insert the total of simple rooms'
    simple_rooms = gets.chomp.to_i
    p 'Insert the total of double rooms'
    double_rooms = gets.chomp.to_i
    p 'Insert the total of resturants'
    total = gets.chomp.to_i

    touristic_centres.push(name)
    type_habitations.push(simple_rooms)
    type_habitations.push(double_rooms)
    restaurants.push(total)
    print_information(touristic_centres, type_habitations, restaurants)
  when 2
    max = 0
    index = 0
    restaurants.each_with_index do |value, i|
      next if value < max

      max = value
      index = i
    end
    p "The #{touristic_centres[index]}, has #{restaurants[index]} resturants"
  when 3
    max = 0
    index = 0
    touristic_centres.each_index do |i|
      total = type_habitations[i * 2] + type_habitations[i * 2 + 1]
      next if total < max

      max = total
      index = i
    end
    p "The #{touristic_centres[index]}, has #{type_habitations[index * 2]} simple rooms, #{type_habitations[index * 2 + 1]} double rooms, in total #{max} rooms"
  when 4
    print_names_for_touristics(touristic_centres)
    p 'Insert the name for search results'
    name = gets.chomp
    pos = find_center(touristic_centres, name)
    if pos.negative?
      'Touristic center not found'
    else
      total_rooms = type_habitations[pos * 2] + type_habitations[pos * 2 + 1]
      p "The #{touristic_centres[pos]}, has #{type_habitations[pos * 2]} simple rooms, #{type_habitations[pos * 2 + 1]}, in total #{total_rooms} rooms"
    end
  else
    p "Invalid Option"
  end
  p "\n"
end
