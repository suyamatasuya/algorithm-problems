def max_product_of_three(arr)
  arr.sort!
    
  # 1. 最大の3つの数の積
  max_product_1 = arr[-1] * arr[-2] * arr[-3]
    
  # 2. 最小の2つの数と最大の1つの数の積
  max_product_2 = arr[0] * arr[1] * arr[-1]
    
  # 最も大きい方を返す
  [max_product_1, max_product_2].max
end
  
input = [-10, -10, 5, 2]
output = max_product_of_three(input)
puts "Maximum product of three numbers is: #{output}"
  