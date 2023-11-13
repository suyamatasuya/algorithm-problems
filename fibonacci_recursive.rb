def fibonacci_recursive(n)
  return n if n <= 1
  fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
end

n = 5
puts "フィボナッチ数列の#{n}番目の数: #{fibonacci_recursive(n)}"