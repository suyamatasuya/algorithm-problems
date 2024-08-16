def longest_increasing_path(matrix)
  return 0 if matrix.empty?
    
  m, n = matrix.length, matrix[0].length
  dp = Array.new(m) { Array.new(n, -1) }
    
  def dfs(matrix, i, j, dp)
    return dp[i][j] if dp[i][j] != -1
      
    directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
    max_path = 1
      
    directions.each do |dir|
      x, y = i + dir[0], j + dir[1]
      if x >= 0 && y >= 0 && x < matrix.length && y < matrix[0].length && matrix[x][y] > matrix[i][j]
        max_path = [max_path, 1 + dfs(matrix, x, y, dp)].max
      end
    end
      
    dp[i][j] = max_path
    return dp[i][j]
  end
    
  result = 0
  (0...m).each do |i|
    (0...n).each do |j|
      result = [result, dfs(matrix, i, j, dp)].max
    end
end
    
  result
end
  
puts longest_increasing_path(matrix) # => 4
  