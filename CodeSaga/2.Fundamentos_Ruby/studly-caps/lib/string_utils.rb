class StringUtils
  def wavefy(string)
    result = string.downcase
    result.each_char.with_index do |char, index|
      result[index] = result[index].upcase if index % 2 != 0
    end
    result
  end
end
