
def majority_element(nums)
  count = 0
  candidate = nil

  nums.each do |num|
    if count == 0
      candidate = num
    end
    count += (num == candidate) ? 1 : -1
  end

  candidate
end

puts "provide an array prices"
nums = gets.chomp.split.map{ |s| s.to_i }
puts "The majority element is #{majority_element(nums)}"
