
require 'byebug'
#Anagrams
def first_anagram?(str1,str2)

  array = str1.split('').permutation(str1.length).to_a

  array.map {|word| word.join("")}.include?(str2)

end

def second_anagram?(str1,str2)

  array1 = str1.chars
  array2 = str2.chars
  debugger
  i = 0
  while i < array1.length
    array2.each_with_index do |char2, jdx|
      if array1[i] == char2
        array1.delete(array1[i])
        array2.delete(char2)
        i -= 1
      end
    end
    i += 1
  end
  array1.empty? && array2.empty?
end

def third_anagram?(str1, str2)

  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.chars.each do |char|
    hash1[char] += 1
  end

  str2.chars.each do |char|
    hash2[char] += 1
  end

  hash1 == hash2
end

def fifth_anagram?(str1, str2)

  hash = Hash.new(0)
  str1.chars.each do |char|
    hash[char] += 1
  end

  str2.chars.each do |char|
    hash[char] -= 1
  end

  hash.values.all? { |x| x == 0}
end
