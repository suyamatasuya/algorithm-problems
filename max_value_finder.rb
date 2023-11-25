# 入力された整数の数を受け取る
N = gets.to_i

# 空白で区切られた整数のリストを受け取る
numbers = gets.chomp.split.map(&:to_i)

# 最大値を見つける
max_value = numbers.max

# 最大値を出力する
puts max_value
