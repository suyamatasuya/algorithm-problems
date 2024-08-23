def group_and_count(input)
  input.chunk_while { |i, j| i == j }  # 連続する要素をグループ化
        .map { |group| [group[0], group.size] }  # グループの要素とその数を配列にまとめる
end
  
input = [1, 1, 2, 2, 2, 3, 1, 1]
output = group_and_count(input)
puts output.inspect
  