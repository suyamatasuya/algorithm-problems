def most_frequent_character(s)
  # 文字をすべて小文字に変換して処理を簡略化
  s = s.downcase
  
  # 文字ごとの出現回数をカウントするためのハッシュを初期化
  frequency = Hash.new(0)
  
  # 各文字の出現回数をカウント
  s.each_char { |char| frequency[char] += 1 }
  
  # 最大出現回数を持つ文字を探す
  most_frequent_char = s[0]
  max_frequency = frequency[most_frequent_char]
  
  frequency.each do |char, count|
    if count > max_frequency
      most_frequent_char = char
      max_frequency = count
    end
  end
  
  most_frequent_char
end
  
  puts most_frequent_character("abAcABbC")
  