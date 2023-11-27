puts "give a list of numbers"
nums = gets.chomp.split.map{ |s| s.to_i }

# 0, 1, 2, 2, 3, 0, 4, 2

puts "which value do you want removed?"
val = gets.chomp.to_i

def remove_element(nums, val)
  k = 0
  nums.each do |num|
      if num != val
        nums[k] = num
        k += 1
      end
  end
  return k
end

# puts "Updated numbers: #{nums}"
# puts "Count of elements not equal to #{val}: #{nums.length}"
