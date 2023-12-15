# 入力の受け取り
n = gets.to_i
numbers = gets.split.map(&:to_i)

# 各数の出現回数を数える
counts = Hash.new(0)
numbers.each { |number| counts[number] += 1 }

# ユニークな数だけを合計する
sum = counts.select { |_, count| count == 1 }.keys.sum

# 結果の出力
puts sum
