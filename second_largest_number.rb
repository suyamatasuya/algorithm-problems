# このメソッドは、与えられた配列から２番目に大きい数字を探します
def find_second_largest(numbers)
  # 配列を昇順にソート。最も小さい数が先頭に、最も大きい数が最後に来るようにする。
  sorted_numbers = numbers.sort
  # sortされた配列の長さが2以上の場合のみ、最後から２番目の要素を返す。
  # [-2]は配列の最後から2番目の要素を指す
  return sorted_numbers[-2] if sorted_numbers.length > 1
  #もし配列の要素が１つ以下の場合、2番目に大きい数字は存在しない。
  # そのため、nilを返して何も返さないことを示す。
  nil
end

# 数字のリストを作成する
numbers_list = [10, 5, 20, 8, 12]
#　上で定義したメソッドを呼び出して、２番目に大きい数字を見つけ、それを出力する。
puts find_second_largest(numbers_list)
