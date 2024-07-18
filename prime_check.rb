def prime?(num)
  return false if num < 2
  (2..Math.sqrt(num)).none? { |i| num % i == 0 }
end
  
puts prime?(7)   # 出力: true
puts prime?(10)  # 出力: false
  