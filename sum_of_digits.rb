def sum_of_digits(n)
  n.to_s.chars.map(&:to_i).sum
end
  
puts sum_of_digits(123)  
puts sum_of_digits(456) 
puts sum_of_digits(9876)