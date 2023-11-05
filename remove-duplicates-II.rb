puts "give a list of numbers"

nums = gets.chomp.split.map{ |s| s.to_i }

# 0, 0, 1, 1, 1, 1, 2, 3, 3
# k = 7

# 1, 1, 1, 2, 2, 3

upd_ind = 0

nums.each_with_index do |num, ind|
  if ind == 0 || ind == 1 || num != nums[upd_ind-2]
    nums[upd_ind] = num
    upd_ind += 1
  end
end

k = upd_ind

puts "removed duplicates array such that each unique element appears at most twice
is #{nums[0...k]} contains #{k} elements"
