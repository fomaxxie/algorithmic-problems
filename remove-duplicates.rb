puts "give a list of numbers"
nums = gets.chomp.split.map{ |s| s.to_i }

# 0, 0, 1, 1, 1, 2, 2, 3, 3, 4
# => k = 5

uniq_ind = 0

nums.each_with_index do |num, ind|
  if ind == 0 || num != nums[ind-1]
    nums[uniq_ind] = num
    uniq_ind += 1
  end
end

k = uniq_ind

puts "removed duplicates array is #{nums[0...k]} contains #{k} elements"
