=begin
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order.
=end

def two_sum(nums, target)
  compliments = {}
  # iterate over a given array
  nums.each_with_index do |num, index|
    #calculate the compliment value to check if such value exists in a hash
    compliment = target - num
    #check if the num value which is a key in a hash exists in a hash
    if compliments.key?(num)
      #if it does, return an index (value in a hash) of this value (key in a hash) and the current index of the value
      return [compliments[num], index]
    end
    #add compliment to a hash {2: 0, 7: 1, 11: 3}
    compliments[compliment] = index
  end
end

puts "give a list of integers"
nums = gets.chomp.split.map{ |s| s.to_i }

puts "give a target value"
target = gets.chomp.to_i

puts "indices of the two numbers that add up to #{target} are #{two_sum(nums, target)}"
