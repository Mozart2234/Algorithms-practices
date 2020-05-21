providers = ['Sfleet', 'Tesla', 'Google', 'Apple', 'Exabeam']
cities = ['New York', 'San Francisco', 'Madrid', 'Lima', 'Chicago']
total_articles = [3, 4, 5, 1, 20]

def find_provider(providers, name)
  index_found_provider = -1
  providers.each_index do |i|
    if providers[i].downcase == name
      index_found_provider = i
      break
    end
  end
  index_found_provider
end

def print_providers(providers, cities, total_articles)
  providers.each_index do |index|
    p "The provider #{providers[index]} live in #{cities[index]} and has #{total_articles[index]} articles"
  end
end

def delete_an_element(arr, index)
  new_arr = []
  arr.each_index do |i|
    new_arr << arr[i] if index != i
  end
  new_arr
end
## FIRST EXERCISE
puts providers
puts "Insert the name of provider for show you when live and how many articles has."
name_provider = gets.chomp.downcase
index_found_provider = find_provider(providers, name_provider)

if index_found_provider.negative?
  p "Provider not found"
else
  puts "The provider #{providers[index_found_provider]} live in #{cities[index_found_provider]} and has #{total_articles[index_found_provider]} articles"
end

## SECOND EXERCISE
puts providers
puts "Insert the name of provider of you need to change"
name_provider = gets.chomp.downcase
index_found_provider = find_provider(providers, name_provider)
if index_found_provider.negative?
  p "Provider not found"
else
  puts "Insert the name of new city"
  new_city = gets.chomp
  cities[index_found_provider] = new_city
  puts "The provider #{providers[index_found_provider]} now live in #{cities[index_found_provider]}"
end

# THIRD EXERCISE
puts providers
puts "Insert the name of provider of you need to change"
name_provider = gets.chomp.downcase
index_found_provider = find_provider(providers, name_provider)
if index_found_provider.negative?
  p "Provider not found"
else
  puts "Insert the operation type for your articles and then insert the quantity"
  puts "1 = Increase"
  puts "2 = Decrease"
  option = gets.chomp.to_i
  # ruby version [1,2,].include?(option)
  if option == 1
    quantity = gets.chomp.to_i
    total_articles[index_found_provider] += quantity
  elsif option == 2
    quantity = gets.chomp.to_i
    total_articles[index_found_provider] -= quantity
  else
    puts "Incorrect option"
  end
  puts "The provider #{providers[index_found_provider]} now has #{total_articles[index_found_provider]} articles"
end

# FOUR EXERCISE
puts providers
puts "Insert the name of provider of you need insert"
name_provider = gets.chomp
puts "Insert the city of #{name_provider}"
city = gets.chomp
puts "Insert the total of articles of #{name_provider}"
total = gets.chomp.to_i

providers.push(name_provider)
cities.push(city)
total_articles.push(total)

print_providers(providers, cities, total_articles)

## FIVE EXERCISE
puts providers
puts "Insert the name of providers for delete"
name_provider = gets.chomp.downcase
index_found_provider = find_provider(providers, name_provider)
if index_found_provider.negative?
  p "Provider not found"
else
  # Delete provider
  providers = delete_an_element(providers, index_found_provider)
  cities = delete_an_element(cities, index_found_provider)
  total_articles = delete_an_element(total_articles, index_found_provider)
  print_providers(providers, cities, total_articles)
end
