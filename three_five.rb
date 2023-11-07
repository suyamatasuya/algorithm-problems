(1..100).each do |number|
  if number % 15 == 0
    puts 'ThreeFive'
  elsif number % 3 == 0
    puts 'three'
  elsif number % 5 == 0
    puts 'Five'
  else
    puts number
  end
end

