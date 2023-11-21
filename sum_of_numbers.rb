def sum_of_numbers(numbers)
    numbers.sum
end

# 入力処理
n = gets.to_i
numbers = gets.split.map(&:to_i)

# 計算と出力
puts sum_of_numbers(numbers)
