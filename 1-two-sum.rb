=begin
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order.
=end

def two_sum(nums, target)
  compliments = {}
  nums.each_with_index do |num, index|
    compliment = target - num
    if compliments.key?(num)
      return [compliments[num], index]
    end
    compliments[compliment] = index
  end
end

puts "give a list of integers"
nums = gets.chomp.split.map{ |s| s.to_i }

puts "give a target value"
target = gets.chomp.to_i

puts "indices of the two numbers that add up to #{target} are #{two_sum(nums, target)}"
