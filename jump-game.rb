def can_jump(nums)
  furthest = 0

  nums.each_with_index do |num, ind|
    if ind > furthest
      return false
    end

    furthest = [furthest, ind + num].max

    return true if furthest >= nums.length - 1
  end
end

puts "provide an array prices"
nums = gets.chomp.split.map{ |s| s.to_i }

# 2, 3, 1, 1, 4
