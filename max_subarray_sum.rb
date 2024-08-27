def max_subarray_sum(nums)
  max_sum = nums[0]
  current_sum = nums[0]
  
  nums[1..-1].each do |num|
    current_sum = [num, current_sum + num].max
    max_sum = [max_sum, current_sum].max
  end
  
  max_sum
end
  
# テストケース
input = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
puts max_subarray_sum(input)
  