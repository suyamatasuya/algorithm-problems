def find_balance_point(nums)
    total_sum = nums.sum
    left_sum = 0
  
    nums.each_with_index do |num, index|
      # 平衡点を見つけた場合、そのインデックスを返す
      if left_sum == total_sum - left_sum - num
        return index
      end
      left_sum += num
    end
  
    # 平衡点が見つからなかった場合
    -1
end
  
  # テスト
  puts find_balance_point([1, 7, 3, 6, 5, 6]) # => 3
  