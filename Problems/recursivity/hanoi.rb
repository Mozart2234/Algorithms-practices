def hanoi(number, origin, dest, aux)
  unless number.zero?
    hanoi(number - 1, origin, aux, dest)
    puts "Moved disc from #{origin} to #{dest}"
    hanoi(number - 1, aux, dest, origin)
  end
end

hanoi(3, 'A', 'C', 'B')
