n = gets.to_i
max_score = 7

n.times do
  score = gets.to_i
  max_score = score if score > max_score
end

puts max_score