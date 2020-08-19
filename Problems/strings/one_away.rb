def one_away(str1, str2)
  return true if str1 == str2
  return false if (str1.size - str2.size).abs > 1

  first = str1
  second = str2

  if str1.size > str2.size
    first = str2
    second = str1
  end

  i = 0
  j = 0
  edit = false
  while i < first.size && j < second.size
    if first[i] != second[j]
      return false if edit

      edit = true
      if first.size == second.size
        i += 1
      end
    else
      i += 1
    end
    j += 1
  end

  true
end

p one_away('pale', 'ple')
p one_away('pales', 'pale')
p one_away('pale', 'bale')
p one_away('pale', 'bake')


