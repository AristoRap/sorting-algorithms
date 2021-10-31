require_relative 'algorithms/all_algorithms'
require_relative 'helpers'

puts '-----Bubble Sort-----'
puts "Option 1: Range of random consecutive numbers - Type '1'"
puts 'Enter the max number of consecutive numbers you would like to randomize
as input for the sort'
puts 'For example: If you indicate 50,
your input will be all numbers from 1 to 50 in a random order'
puts '---------------------'
puts "Option 2: Range of random numbers - Type '2'"
puts 'Enter the max number of random numbers you would like to provide
as input for the sort'
puts '---------------------'
puts "Exit: Type 'exit' to exit the program"
option = nil
value = choose_option(option)
return exit_interface if value == 'exit'

value = value.shuffle
puts 'Here is the random list of numbers generated:'
p value

puts 'How do you want to sort? In ascending or descending order?'
puts "Type 'asc' or 'desc'"

order = nil
order_description = choose_order(order)
return exit_interface if order_description == 'exit'

puts '---------------------'
puts "aaaand here is the list of numbers sorted in #{order_description.downcase} order:"
sorted_arr = bubble_sort_desc(value)
p order_description == 'Ascending' ? sorted_arr.reverse : sorted_arr
