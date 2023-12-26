def balanced_string_split(s)
  count = 0
  balanve = 0

  s.each_char do |char|
    balance += (char == 'L' ? 1 : -1)
    count += 1 if balance == 0
  end

  count
end

puts balanced_string_split("RLLRRRLLR")