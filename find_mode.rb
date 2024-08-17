def find_mode(array)
  frequency = Hash.new(0)
    
  array.each do |num|
    frequency[num] += 1
  end

  max_frequency = frequency.values.max
  mode_candidates = frequency.select { |k, v| v == max_frequency }.keys
    
  mode_candidates.min
end


  