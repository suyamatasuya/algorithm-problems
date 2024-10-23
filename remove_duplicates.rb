def remove_duplicates(array)
  unique_elements = {}  # ハッシュを使って、重複を記録する
  result = []

  array.each do |element|
    unless unique_elements[element]
      unique_elements[element] = true
      result << element
    end
end

  result
end

# 使用例
array = [1, 2, 2, 3, 4, 4, 5]
puts remove_duplicates(array).inspect  # => [1, 2, 3, 4, 5]