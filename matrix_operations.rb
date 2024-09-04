class MatrixOperations

  def self.add_matrices(matrix1, matrix2)
    raise ArgumentError, '行列のサイズが異なります' unless same_size?(matrix1, matrix2)
  
    matrix1.each_with_index.map do |row, i|
      row.each_with_index.map do |val, j|
        val + matrix2[i][j]
      end
    end
  end
  
  # 行列の転置
  def self.transpose_matrix(matrix)
    matrix[0].zip(*matrix[1..-1])
  end
  
  # 行列の積
  def self.multiply_matrices(matrix1, matrix2)
    raise ArgumentError, '行列のサイズが適合していません' unless matrix1[0].size == matrix2.size
  
    result = Array.new(matrix1.size) { Array.new(matrix2[0].size, 0) }
  
    matrix1.each_with_index do |row, i|
      matrix2.transpose.each_with_index do |col, j|
        result[i][j] = row.zip(col).map { |a, b| a * b }.sum
      end
    end
    result
  end
  
  private
  
  # 行列のサイズチェック
  def self.same_size?(matrix1, matrix2)
    matrix1.size == matrix2.size && matrix1[0].size == matrix2[0].size
  end
end
  
matrix1 = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
  
matrix2 = [
  [9, 8, 7],
  [6, 5, 4],
  [3, 2, 1]
]
  
puts "Matrix Addition:"
p MatrixOperations.add_matrices(matrix1, matrix2)
  
puts "Matrix Transpose:"
p MatrixOperations.transpose_matrix(matrix1)
  
puts "Matrix Multiplication:"
p MatrixOperations.multiply_matrices(matrix1, matrix2)
  