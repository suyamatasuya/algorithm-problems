def print_pyramid(n)
    (1..n).each do |i|
      # 増加する数列を作成
      inc_seq = (1...i).to_a.join
      # 減少する数列を作成
      dec_seq = (1..i).to_a.reverse.join
      # 両方の数列を組み合わせて中央揃えにする
      line = inc_seq + dec_seq
      puts line.center(2 * n - 1)
    end
end
  
print_pyramid(4)
  