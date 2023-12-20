=begin
Given an array of strings strs, group the anagrams together.
You can return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a
different word or phrase, typically using all the original letters exactly once.
=end

def group_anagrams(strs)
  anagrams = {}
  strs.each do |str|
      sorted_str = str.chars.sort.join
      if anagrams.key?(sorted_str)
          anagrams[sorted_str] << str
      else
          anagrams[sorted_str] = [str]
      end
  end
  anagrams.values
end
