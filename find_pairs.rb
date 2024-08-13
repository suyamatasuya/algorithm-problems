def find_pairs(arr, target_sum)
  pairs = []
  seen = {}
  
  arr.each do |num|
    complement = target_sum - num
    if seen[complement]
      pairs << [complement, num].sort
    end
      seen[num] = true
    end
  
  pairs.uniq
end

puts find_pairs([2, 4, 3, 5, 7, 8, 1], 9).inspect
puts find_pairs([10, -1, 20, 11, -2, 5, 3], 9).inspect
  