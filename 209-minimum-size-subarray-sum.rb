# Given an array of positive integers nums and a positive integer target, return the minimal length of a
# subarray whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.

def min_sub_array_len(target, nums)
  left = 0
  sum = 0
  min_length = Float::INFINITY

  nums.each_with_index do |num, right|
    sum += num

    while sum >= target
      min_length = [min_length, right - left + 1].min
      sum -= nums[left]
      left += 1
    end
  end

  min_length == Float::INFINITY ? 0 : min_length
end


puts "give a list of numbers"
nums = gets.chomp.split.map{ |s| s.to_i }

puts "the minimal length of a subarray whose sum is greater than or equal to target is #{min_length}"
