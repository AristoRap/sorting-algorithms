# frozen_string_literal: false

require_relative 'algorithms/sorting_algorithms'
require_relative 'helpers'

# puts '-----List of available sorting algorithms-----'
# SortingAlgorithm.algorithms.each_with_index do |algorithm, index|
#   puts algorithm.capitalize.prepend("#0#{index + 1}-").split('_').join(' ')
# end
# puts "Select an algorithm: 1...#{SortingAlgorithm.algorithms.length}"
# algo_index = gets.chomp

abort(exit_interface) if algo_index == 'exit'
puts "---#{SortingAlgorithm.algorithms[algo_index]}---"
puts 'Enter the max number of random numbers you would like to provide
as input for the sort or, type \'exit\' to exit the program'
puts '---------------------'
option = gets.chomp

until valid_option?(option) || option == 'exit'
  puts "That's not a choice - Is it?\nTry again (or type 'exit' to cancel):"
  option = gets.chomp
end

abort(exit_interface) if option == 'exit'

value = choose_option(option.to_i)
value = value.shuffle
puts "Here is the generated random list of #{value.size} numbers:"
puts value.join(', ')

puts 'How do you want to sort? In ascending or descending order?'
puts "Type 'asc' or 'desc'"
order = gets.chomp

until valid_order?(order) || order == 'exit'
  puts "Hmmm, I'm pretty sure that's not an option - Try again.\n(Oh, btw, you can type 'exit' to cancel)"
  order = gets.chomp
end

abort(exit_interface) if order == 'exit'

order_short = choose_order(order)
puts '---------------------'
algorithm = SortingAlgorithm.algorithms[algo_index]
timer { SortingAlgorithm.send(algorithm.to_sym, value, order) }
puts "Here is the list of #{value.size} random numbers sorted in #{order_short} order:"
if order_short == 'ascending'
  puts SortingAlgorithm.send(algorithm.to_sym, value, 'asc').join(', ')
else
  puts SortingAlgorithm.send(algorithm.to_sym, value, 'desc').join(', ')
end
