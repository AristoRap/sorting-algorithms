def add_num(num, index)
  retun "[#{num}]" if num == index
end

def add_dot(num, index)
  return " . " if num > index
end

def add_blank(num, index)
  return "      " if num < index
end

def add_ones(array_length)
  ones = "[1]"
  (array_length - 1).times { ones << " | [1]" }
  return ones
end

def print_num_range(array)
    dots = ""
    bracket_num = ""

  array.each_with_index do |num, index|
    if index.zero?
      unless num == 1
        dots = " . "
        bracket_num = "[#{num}]"
      end
    else
      if num - 1 == index || num == 1
        dots += "      "
        bracket_num += "      "
      else
        dots += " |  . "
        bracket_num += " | [#{num}]"
      end
    end
  end

  puts add_ones(array)
  puts bracket_num
end
