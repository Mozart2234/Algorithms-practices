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
# ## FIRST EXERCISE
# puts providers
# puts "Insert the name of provider for show you when live and how many articles has."
# name_provider = gets.chomp.downcase
# index_found_provider = find_provider(providers, name_provider)

# if index_found_provider.negative?
#   p "Provider not found"
# else
#   puts "The provider #{providers[index_found_provider]} live in #{cities[index_found_provider]} and has #{total_articles[index_found_provider]} articles"
# end

# ## SECOND EXERSICE
# puts providers
# puts "Insert the name of provider of you need to change"
# name_provider = gets.chomp.downcase
# index_found_provider = find_provider(providers, name_provider)
# if index_found_provider.negative?
#   p "Provider not found"
# else
#   puts "Insert the name of new city"
#   new_city = gets.chomp
#   cities[index_found_provider] = new_city
#   puts "The provider #{providers[index_found_provider]} now live in #{cities[index_found_provider]}"
# end

## THIRD EXERSICE
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

