n = gets.to_i
usernames = []

n.times do
  usernames << gets.chomp
end

usernames.sort.each do |username|
  puts username
end