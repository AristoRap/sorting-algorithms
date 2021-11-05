# View
require_relative 'sorting_algorithms'

class View
  def print_list_of_algos(algorithms)
    puts '-----List of available sorting algorithms-----'
    algorithms.each_with_index do |algorithm, index|
      puts algorithm.capitalize.prepend("#0#{index + 1}-").split('_').join(' ')
    end
  end

  def ask_user_for_algo_index(num_of_algos)
    puts "Select an algorithm: 1...#{num_of_algos}"
    algo_index = gets.chomp
    until (algo_index.to_i.positive? && algo_index.to_i < num_of_algos) || algo_index == 'exit'
      puts 'Nope, that doesn\'t seem right - Try again? (or hit \'exit\' to exit the program)'
      algo_index = gets.chomp
    end
    return algo_index.to_i - 1
  end
end
