def merge_sort(array)
    # ベースケース: 配列の要素が1以下のときはそのまま返す
    return array if array.length <= 1
  
    # 配列を二等分する
    mid = array.length / 2
    left = merge_sort(array.slice(0, mid))
    right = merge_sort(array.slice(mid, array.length))
  
    # 分割した配列をマージする
    merge(left, right)
  end
  
  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      # 左右の配列の先頭を比較し、小さい方をsortedに移動
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
  
    # 残った要素を追加
    sorted.concat(left).concat(right)
  end
  
  # 使用例
  array = [4, 3, 5, 2, 1]
  sorted_array = merge_sort(array)
  puts "Sorted array: #{sorted_array}"
  