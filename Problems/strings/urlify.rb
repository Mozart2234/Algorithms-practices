# Urlify Method

def urlify(str, size)
  str = str[0..size].strip.chars.map do |s|
    if s == ' '
      '%20'
    else
      s
    end
  end
  str.join('')
end

def urlify_ruby_version(str, size)
  str[0..size].strip.gsub(' ', '%20')
end

def replace_spaces(str, size)
  number_of_spaces = count_of_char(str, 0, size, ' ')
  new_index = size - 1 + number_of_spaces * 2

  str[new_index + 1] = '\0' if new_index + 1 < str.length

  (size - 1).downto(0) do |i|
    if str[i] == ' '
      str[new_index] = '0'
      str[new_index - 1] = '2'
      str[new_index - 2] = '%'
      new_index -= 3
    else
      str[new_index] = str[i]
      new_index -= 1
    end
  end
  str
end

def count_of_char(str, start, finish, target)
  count = 0
  str[start...finish].chars.each do |char|
    count += 1 if char == target
  end

  count
end

p urlify('Mr John Smith', 13)

p urlify_ruby_version('Mr John Smith', 13)

p replace_spaces('Mr John Smith   ', 13)
