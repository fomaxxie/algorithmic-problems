=begin

Given two strings s and t, return true if t is an anagram of s, and false otherwise.
An Anagram is a word or phrase formed by rearranging the letters of a different word
or phrase, typically using all the original letters exactly once.

=end

def is_anagram(s, t)
    return false if s.length != t.length
    hash = {}

    s.each_char do |char|
        if hash.key?(char)
            hash[char] +=1
        else
            hash[char] = 1
        end
    end

    t.each_char do |char|
        if hash.key?(char)
            hash[char] -= 1
        else
            return false
        end
    end
    return true if hash.all? { |_, value| value.zero? }
    false
end
