# O(n)
def palindrome_permutation?(str)
  p "TEST STRING => #{str}"
  str = remove_spaces(str)

  return false if str.size % 2 == 0

  hash = Hash.new(0) 

  # O(n)
  str.chars.each { |s| hash[s] += 1 }

  odd = 0
  hash.each_value { |v| odd += 1 if v % 2 == 1 }
  odd == 1
end

def remove_spaces(str)
  new_str = ''
  # O(n) Time
  str.downcase.chars.each { |s| new_str += s if s != ' ' }
  new_str
end

p palindrome_permutation?('kayak')
p palindrome_permutation?('race car')
p palindrome_permutation?('care rac')
p palindrome_permutation?('no palindrome')
