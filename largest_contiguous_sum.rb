def max_contiguous_sum(arr)
  current_sum = arr[0]
  max_sum = arr[0]
  
  arr[1..-1].each do |num|
    current_sum = [num, current_sum + num].max
    max_sum = [max_sum, current_sum].max
  end
  
  max_sum
end
  
# テストケース
puts max_contiguous_sum([1, -3, 2, 1, -1])  # => 3
puts max_contiguous_sum([-2, 1, -3, 4, -1, 2, 1, -5, 4])  # => 6
puts max_contiguous_sum([5, 4, -1, 7, 8])  # => 23
  