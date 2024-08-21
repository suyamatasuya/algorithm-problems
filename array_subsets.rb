def subsets(arr)
  return [[]] if arr.empty?
    
  last_element = arr.pop
  subsets_without_last = subsets(arr)
    
  subsets_with_last = subsets_without_last.map do |subset|
    subset + [last_element]
  end
    
  subsets_without_last + subsets_with_last
end
  
input = [1, 2, 3]
output = subsets(input)
puts "Subsets: #{output.inspect}"
  