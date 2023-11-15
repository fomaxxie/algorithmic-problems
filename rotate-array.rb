def rotate(nums, k)
  n = nums.size
  k %= n
  rotated = Array.new(n)

  nums.each_with_index do |num, i|
    new_i = (i + k) % n
    rotated[new_i] = num
  end

  rotated.each_with_index do |num, i|
    nums[i] = num
  end

  nums

end

puts "provide an array prices"
nums = gets.chomp.split.map{ |s| s.to_i }

puts "how many steps do you want to rotate your array?"
k = gets.chomp.to_i

puts rotate(nums, k)
