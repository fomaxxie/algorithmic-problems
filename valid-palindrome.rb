def is_palindrome(s)
  chars = s.gsub(/[^a-zA-Z0-9]+/, '').downcase

  left = 0
  right = chars.size - 1

  while left < right
    if chars[left] != chars[right]
      return false
    end
    left += 1
    right -=1
  end

  true

end

puts "provide a string"
s = gets.chomp

puts "#{is_palindrome(s)}"
