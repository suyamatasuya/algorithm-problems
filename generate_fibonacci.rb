def fibonacci(n)
  return n if n <= 1
  fibonacci(n - 1) + fibonacci(n - 2)
end

# n番目のフィボナッチ数を表示
puts fibonacci(10)