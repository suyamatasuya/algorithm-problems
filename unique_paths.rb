def unique_paths(m, n)
  # すべての要素を1で初期化したm×nのグリッドを作成
  grid = Array.new(m) { Array.new(n, 1) }
  
  # 各セルに対して、左と上のセルの値を足し合わせる
  (1...m).each do |i|
    (1...n).each do |j|
      grid[i][j] = grid[i - 1][j] + grid[i][j - 1]
    end
  end
  
  # 右下のセルにはユニークなパスの総数が格納される
  grid[m - 1][n - 1]
end
  
# 使用例
puts unique_paths(3, 3)  
  