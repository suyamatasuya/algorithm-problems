input = gets.chomp

# 連続する数字を探して、その配列を得る
numbers = input.scan(/\d+/)

if numbers.empty?
  puts 0
else
  # 連続する数字の中で最も長いものの長さを出力
  puts numbers.max_by(&:length).length
end
