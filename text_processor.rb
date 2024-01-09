def process_text(text, replace_word)
    text.split.map do |word|
      # 特定の単語を置換
      word = replace_word[word] if replace_word[word]
      # 単語の先頭文字を大文字にする
      word.capitalize
    end.join(' ')
end
  
  # 入力例
  text = "the quick brown fox jumps over the lazy dog"
  replace_word = { "the" => "a", "dog" => "cat" }
  
  # 出力
  puts process_text(text, replace_word)
  