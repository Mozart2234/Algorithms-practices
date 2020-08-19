def string_compression(str)
  return str if count_compression(str) >= str.size

  new_string = ''
  count = 0
  (0...str.size).each do |index|
    count += 1
    if index + 1 >= str.size || str[index] != str[index + 1]
      new_string << "#{str[index]}#{count.to_s.size}"
      count = 0
    end
  end

  new_string 
end

def count_compression(str)
  size_compression = 0
  count = 0
  (0...str.size).each do |index|
    count += 1

    if index + 1 >= str.size || str[index] != str[index + 1]
      size_compression += 1 + count.to_s.size 
      count = 0
    end
  end
  size_compression
end

p string_compression('aabcccccaaa')
p string_compression('alexeimmmmmmAAAAA')
p string_compression('gaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdfkjhaskdjahsbkcjbaslcjk')
p string_compression('alexei')
