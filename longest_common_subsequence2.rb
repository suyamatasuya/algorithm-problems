def lcs(str1, str2)
  m = str1.length
  n = str2.length
  
  # 2次元配列を作成して初期化
  dp = Array.new(m+1) { Array.new(n+1, 0) }
  
  # 動的計画法でLCSの長さを計算
  (1..m).each do |i|
    (1..n).each do |j|
      if str1[i-1] == str2[j-1]
        dp[i][j] = dp[i-1][j-1] + 1
      else
        dp[i][j] = [dp[i-1][j], dp[i][j-1]].max
      end
    end
  end
  
  # 最長の共通部分列の長さを返す
  dp[m][n]
end
  
# テストケース
str1 = "AGGTAB"
str2 = "GXTXAYB"
  
puts lcs(str1, str2)  # 出力: 4
  