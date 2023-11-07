numbers = (1..100).to_a
even_numbers = numbers.select { |number| number.even? }
puts even_numbers