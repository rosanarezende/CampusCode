class Arrays
  def self.multiplica_antecessor_predecessor(array)
    result = []
    array.each_with_index do |item, index|
      case item
        when array.first
          result << item * array[1]
        when array.last
          result << item * array[-2]
        else
          result << array[index - 1] * array[index + 1]
      end
    end
    result
  end
end
