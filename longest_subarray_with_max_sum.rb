def longest_subarray(array)
  max_so_far  = array.first
  highest_sum = array.first
  current_max = array.first
  
  (1...array.length).each do |index|
    current_max = [array[index], current_max + array[index]].max
    max_so_far  = [max_so_far, current_max].max
    highest_sum = [array[index], highest_sum, highest_sum + array[index]].max
  end

  puts "#{max_so_far} #{highest_sum}"
end

puts longest_subarray([1, 2, 3, 4])