def longest_common_subsequence(str1, str2)
  m = str1.length
   n = str2.length
  
  dp = Array.new(m+1) { Array.new(n+1, 0) }
  
  # 配列を埋める
  (1..m).each do |i|
    (1..n).each do |j|
      if str1[i-1] == str2[j-1]
        dp[i][j] = dp[i-1][j-1] + 1
      else
        dp[i][j] = [dp[i-1][j], dp[i][j-1]].max
      end
    end
  end
  
  dp[m][n]
end
  
str1 = "ABCBDAB"
str2 = "BDCAB"
puts longest_common_subsequence(str1, str2)  # => 4
  