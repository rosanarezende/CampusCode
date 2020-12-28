class Arrays
  def self.multiplica_indices(array)
    result = []
    array.each_with_index do |item, index|
      result << item * index
    end
    result
  end
end
