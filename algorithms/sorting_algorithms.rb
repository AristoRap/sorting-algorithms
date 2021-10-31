# frozen_string_literal: true

require_relative 'bubble_sort'

# Class wrapper for various implemented sorting algirithms.
class SortingAlgorithm
  def self.bubble_sort(array, ord = 'desc')
    case ord
    when 'asc'
      bubble_sort_desc(array).reverse
    else
      bubble_sort_desc(array)
    end
  end
end
