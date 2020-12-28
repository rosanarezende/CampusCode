class MutationCounter
  def calculate(dna_collection)
    result = []
    dna_collection.each do |item|
      a,b = item
      num = 0
      (0...a.size).each { |i| num += 1 if a[i] != b[i] }
      result << num
    end
    result.sort.last
  end
end
