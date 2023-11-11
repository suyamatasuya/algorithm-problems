def max_min_difference(arr)
  return nil if arr.empty?

  max_value = arr.max
  min_value = arr.min

  max_value - min_value
end

arr = [5, 3, 9, 1, 6]
difference = max_min_difference(arr)
puts "最大値と最小値の差: #{difference}"
