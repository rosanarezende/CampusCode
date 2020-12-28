class Arrays
  def inverse_strings(array)
    inverse = array.map { |string| string.reverse } 
    array.difference(inverse)
  end
end

