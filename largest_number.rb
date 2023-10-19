def largest_number(arr)
    # 文字列に変換してからソート
    arr.sort! { |a, b| (b.to_s + a.to_s) <=> (a.to_s + b.to_s) }
    # ソートされた配列を結合して返す
    arr.join('')
end
  
numbers = [54, 546, 548, 60]
puts largest_number(numbers) # => 6054854654
  