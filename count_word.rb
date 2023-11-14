word = gets.chomp 
#chomp は改行文字を取り除くために使用される。
text = gets.chomp

count = text.scan(word).length
#配列の .length メソッドを使用して、配列内の要素の数、つまり単語の出現回数をカウントする。
puts count