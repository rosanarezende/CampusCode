class WordCounter
  def count_words(frase)
    frequencies = Hash.new(0)
    frase.gsub(/[.,:;]+/,"").downcase.split.each { |x| frequencies[x] += 1 }
    result = []
    frequencies.each { |x, y| result << [x, y] }
    result
  end
end

