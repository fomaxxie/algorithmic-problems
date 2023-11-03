# Given a list of numbers can you find all the pairs of numbers whose sum equals k?
# For example, when given the list 1 9 11 13 2 3 7 5 and k as 12, you should find these pairs: {1 11}, {9 3} and {7, 5}.

puts "give a list of numbers"
nums = gets.chomp.split.map{ |s| s.to_i }


# gets nums = [1, 9, 11, 13, 2, 3, 7, 5]
# 1 9 11 13 2 3 7 5

puts "which sum of pairs do you want to find"
k = gets.chomp.to_i

# gets k = 12

pairs = []

nums.each_with_index do |num_1, ind_1|
  nums.each_with_index do |num_2, ind_2|
    if ind_1 < ind_2 && num_1 + num_2 == k
      pairs << [num_1, num_2]
    end
  end
end

puts "Pairs that sum to #{k}: #{pairs}"
