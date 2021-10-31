def exit_interface
  puts ''
  puts '---Exit Successful---'
end

def valid_option?(option)
  options = [1, 2]
  return options.include?(option.to_i)
end

def valid_order?(order)
  orders = ['asc', 'desc']
  return orders.include?(order)
end

def choose_option(option)
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
    puts "That's not a choice - Is it?\nTry again (or type 'exit' to cancel):"
  end
  return array
end

def choose_order(order)
  case order
  when 'asc'
    return 'Ascending'
  when 'desc'
    return 'Descending'
  end
end
