require_relative 'algorithms/all_algorithms'
require_relative 'helpers'
require 'pry-byebug'

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
option = gets.chomp

until valid_option?(option) || option == 'exit'
  puts "That's not a choice - Is it?\nTry again (or type 'exit' to cancel):"
  option = gets.chomp
end

return exit_interface if option == 'exit'

value = choose_option(option.to_i)
value = value.shuffle
puts 'Here is the random list of numbers generated:'
p value

puts 'How do you want to sort? In ascending or descending order?'
puts "Type 'asc' or 'desc'"
order = gets.chomp

until valid_order?(order) || order == 'exit'
  puts "Hmmm, I'm pretty sure that's not an option - Try again.\n(Oh, btw, you can type 'exit' to cancel)"
  order = gets.chomp
end

return exit_interface if order == 'exit'

order_description = choose_order(order)
puts '---------------------'
puts "aaaand here is the list of numbers sorted in #{order_description.downcase} order:"
sorted_arr = bubble_sort_desc(value)
p order_description == 'Ascending' ? sorted_arr.reverse : sorted_arr
