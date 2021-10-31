def bubble_sort_desc(num_array)
  # This method accepts a range as argument
  # It returns a sorted array in a descending order
  swap = true
  until swap == false
    swap = false
    sorted_array = num_array.each_with_index do |_num, indx|
      next if indx == num_array.length - 1

      # The <=> returns:
      # -1 if left < right | 0 if left == right | 1 if left > right
      if (num_array[indx + 1] <=> num_array[indx]) == 1
        num_array[indx], num_array[indx + 1] = num_array[indx + 1], num_array[indx]
        swap = true
      end
    end
  end
  sorted_array
end
