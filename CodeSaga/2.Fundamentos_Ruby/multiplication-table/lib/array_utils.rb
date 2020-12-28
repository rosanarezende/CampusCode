class ArrayUtils
  def self.multiplos(qtd, multiplo)
    result = []
    1.upto(qtd) { |n| result << n * multiplo }
    result
  end

  def self.tabuada(num)
    result = []
    1.upto(num) do |n|
      multiplicado = []
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |num| multiplicado << num * n }
      result.push(multiplicado)
    end
    result
  end
end
