#Given an integer x, return true if x is a palindrome, and false otherwise.

def is_palindrome(x)
  str_x = x.to_s
  i = 0
  j = str_x.length - 1

  while i < j
    if str_x[i] != str_x[j]
      return false
    end
    i += 1
    j -= 1
  end

  true
end
