# 要素の数を入力
n = gets.to_i

# スペース区切りの数値を入力し、配列に変換
numbers = gets.split.map(&:to_i)

# 配列内の数値の合計を計算
sum = numbers.sum

# 合計値を出力
puts sum
