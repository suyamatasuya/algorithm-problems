def merge_sort(array)
    # ベースケース: 配列の長さが1以下の場合は、そのまま返す
    return array if array.length <= 1
    
    # 配列を半分に分割
    mid = array.length / 2
    left = merge_sort(array[0...mid])
    right = merge_sort(array[mid..-1])
    
    # 分割した配列をマージ
    merge(left, right)
end
  
def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      # 左右の配列の先頭を比較し、小さい方をsortedに追加
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    
    # 残った要素を追加
    sorted + left + right
end
  
  # テスト用の配列
  array = [34, 7, 23, 32, 5, 62]
  puts "Sorted array: #{merge_sort(array)}"
  