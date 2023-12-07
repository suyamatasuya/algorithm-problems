# 数字の列を入力から受け取る
numbers = gets.chomp.split.map(&:to_i)
# 奇数のみを選んでその合計を計算
sum_of_odds = numbers.select { |num| num.odd? }.sum


puts sum_of_odds