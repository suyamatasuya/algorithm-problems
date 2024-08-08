def find_max(array)
  max_value = array[0]
  array.each do |element|
    if element > max_value
      max_value = element
    end
  end
  max_value
end