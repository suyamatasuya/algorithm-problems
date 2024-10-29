# 数値の配列を定義
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# 偶数のみを抽出し、その合計を計算するメソッドを定義
def sum_of_evens(array)
  # 配列から偶数を選び、合計を求める
  evens = array.select { |num| num.even? }
  evens.sum
end

puts "偶数の合計: #{sum_of_evens(numbers)}"