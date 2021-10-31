# frozen_string_literal: true

def timer
  start_time = Time.now
  yield
  end_time = Time.now
  puts "Time taken to sort: #{(end_time - start_time).round(2)} seconds"
  puts ''
end

def exit_interface
  puts ''
  puts '---Exit Successful---'
end

def valid_option?(option)
  options = [1, 2]
  options.include?(option.to_i)
end

def valid_order?(order)
  orders = %('asc', 'desc')
  orders.include?(order)
end

def choose_option(option)
  case option
  when 1
    puts 'Enter a max number to define the range (max. 10000):'
    puts "1\n.\n.\n."
    number = gets.chomp.to_i
    array = (1..number).to_a
  when 2
    puts 'Enter a max number of random numbers to add (max. 10000):'
    number = gets.chomp.to_i
    array = []
    number.times { array << rand(100_00) }
  else
    puts "That's not a choice - Is it?\nTry again (or type 'exit' to cancel):"
  end
  array
end

def choose_order(order)
  case order
  when 'asc'
    'ascending'
  when 'desc'
    'descending'
  end
end
