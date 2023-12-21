def find_balance_point(arr)
  total_sum = arr.sum 

  left_sum = 0

  arr.each_with_index do |num, index|
    right_sum = total_sum - left_sum - num
    return index if left_sum == right_sum
    left_sum += num

    -1
end

puts find_balance_point([1, 7, 3, 6, 2, 9])