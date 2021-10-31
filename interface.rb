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
option = nil

until option == 1 || option == 2 || option == 'exit'
  option = gets.chomp.to_i
  return '-Exit Successful-' if option == 'exit'

  if option == 1
    puts 'Enter a max number to define the range (max. 10000):'
    puts "1\n.\n.\n."
    number = gets.chomp.to_i
    array = (1..number).to_a
  elsif option == 2
    puts 'Enter a max number of random numbers to add (max. 10000):'
    number = gets.chomp.to_i
    array = []
    number.times { array << rand(100_00) }
  else
    puts "That's not a choice - Is it?\n Try again (or type 'exit' to cancel):"
  end
end

value = array.shuffle
puts 'Here is the random list of numbers generated:'
p value

puts 'Oh, by the way - Do you want to sort in ascending or descending order?'
puts "Type 'asc' or 'desc'"

order = nil
until order == 'asc' || order == 'desc' || order == 'exit'
  order = gets.chomp
  return '-Exit Successful-' if order == 'exit'

  case order
  when 'asc'
    order_description = 'Ascending'
  when 'desc'
    order_description = 'Descending'
  else
    "Hmmm, I'm pretty sure that's not an option - Try again.
    (Oh, btw, you can type 'exit' to cancel)"
  end
end

puts '---------------------'
puts "aaaand here is the list of numbers sorted in #{order_description.downcase} order:"
sorted_arr = bubble_sort_desc(value)
p order_description == 'Ascending' ? sorted_arr.reverse : sorted_arr
