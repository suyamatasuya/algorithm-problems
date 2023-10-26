puts "整数nを入力してください（1 <= n <= 100）:"
n = gets.to_i

if n < 1 || n > 100
  puts "不正な値です。1から100の間の整数を入力してください。"
else
  (1..n).each do |i|
    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end
  end
end
