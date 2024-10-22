def quick_sort(array)
  # ベースケース: 配列が1つ以下ならそのまま返す
  return array if array.length <= 1
  
  # 配列の最初の要素をピボットにする
  pivot = array.delete_at(rand(array.length))
  
  # ピボットより小さい値と大きい値に分ける
  left = array.select { |x| x < pivot }
  right = array.select { |x| x >= pivot }
  
  # 再帰的にソートし、結果を結合して返す
  quick_sort(left) + [pivot] + quick_sort(right)
end
  
# 使用例
unsorted_array = [3, 6, 8, 10, 1, 2, 1]
sorted_array = quick_sort(unsorted_array)
puts sorted_array.inspect