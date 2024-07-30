def longest_palindromic_subsequence(s)
  n = s.length
  dp = Array.new(n) { Array.new(n, 0) }
    
  # すべての1文字の部分文字列は長さ1の回文
  (0...n).each do |i|
    dp[i][i] = 1
  end
    
   # 長さ2以上の部分文字列を調べる
  (2..n).each do |len|
    (0...(n-len+1)).each do |i|
    j = i + len - 1
    if s[i] == s[j] && len == 2
      dp[i][j] = 2
    elsif s[i] == s[j]
      dp[i][j] = dp[i+1][j-1] + 2
    else
      dp[i][j] = [dp[i+1][j], dp[i][j-1]].max
    end
  end
end

  dp[0][n-1]
end

puts longest_palindromic_subsequence("bbbab")  # 4
puts longest_palindromic_subsequence("cbbd")   # 2