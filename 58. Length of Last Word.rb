# Given a string s consisting of words and spaces, return the length of the last word in the string.
# A word is a maximal substring consisting of non-space characters only.

def length_of_last_word(s)
  last_word_length = 0
  index = s.length - 1

  while index >= 0 && s[index] == ' '
    index -= 1
  end
  
  while index >= 0 && s[index] != " "
    index -= 1
    last_word_length += 1
  end

  return last_word_length
end

puts "give a list of numbers"
nums = gets.chomp.split.map{ |s| s.to_i }

puts "the minimal length of a subarray whose sum is greater than or equal to target is #{min_length}"
