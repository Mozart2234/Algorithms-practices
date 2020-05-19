# This Array represent amounts of months for departments
# MONTHS  |  RH   | Sales | Legal
# January | 120.0 | 100.0 | 50.0
# ....      ....     ...    ...
# December | 120.0 | 100.0 | 50.0 
require 'date'

arr_example = [
  [120.0, 140.0, 50.0],
  [120.0, 200.0, 10.0],
  [140.0, 110.0, 120.0],
  [160.0, 110.0, 12.0],
  [160.0, 150.0, 12.0],
  [170.0, 110.0, 10.0],
  [120.0, 120.0, 15.0],
  [120.0, 150.0, 18.0],
  [160.0, 600.0, 20.0],
  [170.0, 500.0, 25.0],
  [220.0, 400.0, 35.0],
  [520.0, 200.0, 16.0],
]
printf("%<months>-10s %<rh>-7s %<sales>-7s %<legal>-7s \n", months: 'MONTHS', rh: 'RH', sales: 'SALES', legal: 'LEGAL')
arr_example.each_with_index do |i, index|
  # i.each do |j|
  printf("%<months>-10s $%<rh>-0.2f $%<sales>-0.2f $%<legal>-0.2f \n", months: Date::MONTHNAMES[index + 1], rh: i[0], sales: i[1], legal: i[2])
  # end
end
