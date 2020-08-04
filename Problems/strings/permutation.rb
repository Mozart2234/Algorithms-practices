# Check permutation

def permutation?(str1, str2)
  str1 = str1.strip
  str2 = str2.strip

  return false if str1.length != str2.length

  hash = {}
  str1.downcase.chars.each { |str| hash[str] = false }
  str2.downcase.chars.each do |str|
    return false if hash[str].nil? || hash[str]

    hash[str] = true
  end

  true
end

def permutation2?(str1, str2)
  return false if str1.length != str2.length

  letters = Array.new(128, 0)

  str1.chars.each { |s| letters[s.ord] += 1 }
  str2.chars.each do |s|
    letters[s.ord] -= 1
    return false if letters[s.ord].negative?
  end

  true
end


p permutation?('hola', 'loha')
p permutation2?('hola', 'loha')
