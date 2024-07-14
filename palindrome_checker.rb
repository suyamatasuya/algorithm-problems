def palindrome?(str)
  str == str.reverse
end

test_strings = ["racecar", "hello", "level", "world", "madom"]

test_string.each do |string|
  if palindrome?(string)
    puts "#{string} is a palindrome."
  else
    puts "#{string} is not a palindrome."
  end
end