def max_subsequence_sum(arr)
    max_ending_here = max_so_far = arr[0]
  
    arr[1..-1].each do |num|
      max_ending_here = [num, max_ending_here + num].max
      max_so_far = [max_so_far, max_ending_here].max
    end
  
    max_so_far
  end
  
  puts max_subsequence_sum([-2, 1, -3, 4, -1, 2, 1, -5, 4])