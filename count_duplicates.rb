def count_duplicates(array)
    counts = Hash.new(0)
    array.each { |element| counts[element] += 1 }
    counts
  end
  
  # 使用例
  puts count_duplicates([1, 2, 4, 2, 1, 3, 4, 4])
  # 出力: {1=>2, 2=>2, 4=>3, 3=>1}
  