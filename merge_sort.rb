def merge_sort(arr)
    return arr if arr.length <= 1
  
    mid = arr.length / 2
    left = merge_sort(arr[0...mid])
    right = merge_sort(arr[mid..-1])
    merge(left, right)
end
  
def merge(left, right)
  sorted = []
    until left.empty? || right.empty?
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
  sorted + left + right
end
  
array = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]
puts merge_sort(array).inspect
  