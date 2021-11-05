# Controller
require_relative 'view'
require_relative 'sorting_algorithms'

class Controller
  def initialize
    @algorithms = SortingAlgorithm.algorithms
    @view = View.new
  end

  def list
    @view.print_list_of_algos(@algorithms)
  end
end
