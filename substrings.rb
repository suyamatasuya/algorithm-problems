def substrings(str)
  result = []
  (0...str.length).each do |i|
    (i...str.length).each do |j|
    result << str[i..j]
    end
  end
  result
end
  
# テスト
puts substrings("abc").inspect
  