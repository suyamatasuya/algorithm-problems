input_str = gets.chomp
count = Hash.new(0)

input_str.each_char do |char|
  count[char] += 1 if char.match(/[a-zA-Z]/)
end

count.sort.each do |char, frequency|
  puts "#{char}: #{frequency}"
end