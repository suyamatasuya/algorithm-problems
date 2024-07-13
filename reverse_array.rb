def reverse_array(arr)
    reversed = []
    arr.each do |element|
      reversed.unshift(element)
    end
    reversed
  end
  
  # テスト
  puts reverse_array([1, 2, 3, 4, 5]).inspect # => [5, 4, 3, 2, 1]
  puts reverse_array([7, 8, 9]).inspect # => [9, 8, 7]
  puts reverse_array([]).inspect # => []

def reverse_array(arr)
    reversed = []
    arr.each do |element|
      reversed.unshift(element)
    end
    reversed
end