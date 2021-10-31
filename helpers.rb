def choose_option(option)
  until option == 1 || option == 2 || option == 'exit'
    option = gets.chomp
    return option if option == 'exit'
    option = option.to_i

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
  return array
end

def choose_order(order)
  until order == 'asc' || order == 'desc' || order == 'exit'
    order = gets.chomp
    return order if order == 'exit'

    case order
    when 'asc'
      order_description = 'Ascending'
    when 'desc'
      order_description = 'Descending'
    else
      puts "Hmmm, I'm pretty sure that's not an option - Try again.\n(Oh, btw, you can type 'exit' to cancel)"
    end
  end
  return order_description
end

def exit_interface
  puts ''
  puts '---Exit Successful---'
end
