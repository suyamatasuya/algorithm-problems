def find_minimum(arr)
  min_value = arr[0]

  arr.each do |num|
    if num < min_value
      min_value = num
    end
  end
  return min_value
end

puts find_minimum([5, 3, 8, 2, 4])
  