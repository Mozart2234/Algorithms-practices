# frozen_string_literal: true

harvests = [
  123.4,
  10.3,
  155.3,
  120.3,
  19.3,
  22.3,
  44.3,
  55.3,
  22.3,
  45.2,
  677.2,
  234.23
]

total = 0.0
lower = 0
higher = 0
avg = 0.0

harvests.each do |amount|
  total += amount
end
avg = total/harvests.size

harvests.each do |amount|
  avg > amount ? higher += 1 : lower += 1
end

p "The anual average is #{avg}"
p "Total months having higher than average amount #{higher}"
p "Total months having lower than average amount #{lower}"
