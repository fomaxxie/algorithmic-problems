=begin
Given two strings s and t, determine if they are isomorphic.
Two strings s and t are isomorphic if the characters in s can be replaced to get t.
All occurrences of a character must be replaced with another character while
preserving the order of characters. No two characters may map to the same character,
but a character may map to itself.
=end

def is_isomorphic(s, t)
  return false if s.length != t.length
  map_s_to_t = {}
  map_t_to_s = {}

  s.chars.each_with_index do |char_s, i|
      char_t = t[i]

      if (map_s_to_t.key?(char_s) && map_s_to_t[char_s] != char_t) ||
         (map_t_to_s.key?(char_t) && map_t_to_s[char_t] != char_s)
          return false
      end

      map_s_to_t[char_s] = char_t
      map_t_to_s[char_t] = char_s
  end
  true
end

puts "give the first string"
s = gets.chomp

puts "give the second string"
t = gets.chomp

puts "#{is_isomorphic(s, t) ? "These two strings are isometric" : "These two strings aren't isometric"}"
