# 奇数の要素だけを2倍にする
numbers = [1, 2, 3, 4, 5]

# 奇数を選び、2倍にした配列を作成
result = numbers.select { |n| n.odd? }.map { |n| n * 2 }

p result  # => [2, 6, 10]