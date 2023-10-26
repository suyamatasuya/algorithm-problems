puts "整数を入力してください:"
number = gets.to_i

if number < 10
  puts "10未満です"
elsif number >= 10 && number <= 20
  puts "10以上、20以下です"
else
  puts "20より大きいです"
end