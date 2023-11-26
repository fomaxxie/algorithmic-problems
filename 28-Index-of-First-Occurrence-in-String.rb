#Given two strings needle and haystack, return the index of the first occurrence
#of needle in haystack, or -1 if needle is not part of haystack.

def str_str(haystack, needle)
  needle_index = 0
  haystack_index = 0

  while haystack_index < haystack.length
    if haystack[haystack_index] == needle[needle_index]
      needle_index += 1
    else
      needle_index = 0
    end

    return haystack_index - needle.length + 1 if needle_index == needle.length

    haystack_index += 1
  end

  return -1
end


puts "give a haystack"
haystack = gets.chomp

puts "give a needle"
needle = gets.chomp

puts "the index of the first occurrence of needle in haystack #{str_str(haystack, needle)}"
