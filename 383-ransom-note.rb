def can_construct(ransom_note, magazine)
  mag_char_count = Hash.new(0)
  i = j = 0

  while i < magazine.length
      char = magazine[i]
      mag_char_count[char] +=1
      i += 1
  end

  while j < ransom_note.length
      char = ransom_note[j]
      if mag_char_count[char] == 0
          return false
      end
      mag_char_count[char] -= 1
      j += 1
  end

  true
end

puts "give a ransom note"
ransom_note = gets.chomp

puts "give a magazine"
magazine = gets.chomp

puts "Ransom note can be constructed by using the letters from magazine? #{can_construct(ransom_note, magazine)}"
