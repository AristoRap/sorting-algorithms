# frozen_string_literal: false

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

  def self.algorithms
    %w[bubble_sort quick_sort]
  end
end
