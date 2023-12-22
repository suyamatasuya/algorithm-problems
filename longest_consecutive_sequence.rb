def longest_consecutive(arr)
    return 0 if arr.empty?
  
    max_length = 1
    current_length = 1
  
    # 配列をソート
    sorted_arr = arr.sort
  
    # 配列を一つずつ見ていく
    (1...sorted_arr.length).each do |i|
      if sorted_arr[i] == sorted_arr[i-1]
        next  # 同じ数値はスキップ
      elsif sorted_arr[i] == sorted_arr[i-1] + 1
        current_length += 1  # 連続している場合はカウントアップ
      else
        max_length = [max_length, current_length].max
        current_length = 1  # 連続が途切れたらリセット
      end
    end
  
    # 最後の連続部分を比較
    [max_length, current_length].max
  end
  
  # テスト用の配列
  test_array = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
  puts longest_consecutive(test_array)  # => 4  