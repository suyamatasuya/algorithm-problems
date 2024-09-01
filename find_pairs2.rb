def find_pairs(numbers, target_sum)
  pairs = []
  numbers.each_with_index do |num, index|
    (index + 1).upto(numbers.size - 1) do |j|
      if num + numbers[j] == target_sum
        pairs << [num, numbers[j]]
      end
    end
  end
  pairs
end
  
numbers = [2, 4, 3, 5, 7]
target_sum = 9
p find_pairs(numbers, target_sum)
  