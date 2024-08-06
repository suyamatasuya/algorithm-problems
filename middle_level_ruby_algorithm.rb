def most_frequent_element(arr)
  return [] if arr.empty?
  
  frequency = Hash.new(0)
  arr.each { |num| frequency[num] += 1 }
  
  max_count = frequency.values.max
  most_frequent = frequency.select { |k, v| v == max_count }.keys.first
  
  [most_frequent, max_count]
end
  
# テストケース
puts most_frequent_element([1, 3, 2, 1, 4, 1, 3, 3]).inspect  # => [1, 3]
puts most_frequent_element([4, 5, 6, 5, 6, 6, 7]).inspect     # => [6, 3]
puts most_frequent_element([1]).inspect                      # => [1, 1]
puts most_frequent_element([]).inspect                       # => []