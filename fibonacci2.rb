def fibonacci(n)
  return n if n <= 1
  fibonacci(n - 1) + fibonacci(n - 2)
end

if __FILE__ == $0
  puts fibonacci(0)  # 出力: 0
  puts fibonacci(1)  # 出力: 1
  puts fibonacci(5)  # 出力: 5
  puts fibonacci(10) # 出力: 55
end