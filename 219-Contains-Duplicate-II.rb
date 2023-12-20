# Given an integer array nums and an integer k,
#return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

def contains_nearby_duplicate(nums, k)
  hash = {}

  nums.each_with_index do |num, ind|
      if hash.key?(num)
          return true if (ind - hash[num]).abs <= k
      end
      hash[num]=ind
  end

  false
end
