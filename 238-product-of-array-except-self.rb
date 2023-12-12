=begin
Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
You must write an algorithm that runs in O(n) time and without using the division operation.
=end

def product_except_self(nums)
  # ans = []

  # nums.each_with_index do |num_1, ind_1|
  #     product = 1
  #     nums.each_with_index do |num_2,ind_2|
  #         if ind_2 != ind_1
  #             product *= nums[ind_2]
  #         end
  #     end
  #     ans << product
  # end
  # ans

  n = nums.size
  ans = Array.new(n, 1)
  product_right = 1
  product_left = 1

  nums.each_with_index do |num, i|
      ans[i] = product_left
      product_left *= num
  end

  nums.each_with_index do |num, i|
      j = n - i - 1
      ans[j] *= product_right
      product_right *=nums[j]
  end
  ans
end
