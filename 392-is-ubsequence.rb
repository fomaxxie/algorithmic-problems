def is_subsequence(s, t)
  i = j = 0

  while i < s.length && j < t.length
      if s[i] == t[j]
        i += 1
      end

      j += 1
  end

  return i == s.length
end
