def group_anagrams(words)
  groups = Hash.new { |hash, key| hash[key] = [] }
  
  words.each do |word|
    key = word.chars.sort.join
    groups[key] << word
  end
  
  groups.values
end
  
  words = ["eat", "tea", "tan", "ate", "nat", "bat"]
  result = group_anagrams(words)
  expected = [
    ["eat", "tea", "ate"],
    ["tan", "nat"],
    ["bat"]
  ]
  
  if result.map(&:sort).sort == expected.map(&:sort).sort
    puts "テストケース1は成功しました"
  else
    puts "テストケース1は失敗しました"
  end
  
  words = ["abc", "bca", "cab", "xyz", "zyx"]
  result = group_anagrams(words)
  expected = [
    ["abc", "bca", "cab"],
    ["xyz", "zyx"]
  ]
  
if result.map(&:sort).sort == expected.map(&:sort).sort
  puts "テストケース2は成功しました"
else
  puts "テストケース2は失敗しました"
end
  