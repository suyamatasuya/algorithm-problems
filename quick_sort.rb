def quick_sort(array)
    # ベースケース: 配列の要素が1以下のときはそのまま返す
    return array if array.length <= 1
  
    # ピボット（ここでは配列の最初の要素）を選び、それ以外の要素をピボットより大きいか小さいかで分割
    pivot = array.shift
    less, greater = array.partition { |e| e < pivot }
  
    # 再帰的にこの操作を繰り返し、最後に統合
    quick_sort(less) + [pivot] + quick_sort(greater)
end
  
  # 使用例
  array = [34, 7, 23, 32, 5, 62]
  sorted_array = quick_sort(array)
  puts "Sorted array: #{sorted_array}"  