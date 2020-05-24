def diamond(n)
  return nil if n <= 0 || n % 2 == 0
  diamonds = ""
  identifier = 1
  middle = (n + 1) / 2
  (1..n).to_a.each do |i|
    identifier = i <= middle ? i : identifier - 1
    total_diamonds = (identifier * 2) - 1
    spaces = (n - total_diamonds) / 2
    diamonds << "#{' ' * spaces}#{'*' * total_diamonds}\n"
  end
  diamonds
end

print diamond(9)