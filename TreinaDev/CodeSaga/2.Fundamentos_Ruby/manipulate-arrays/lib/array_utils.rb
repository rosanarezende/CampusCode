class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.divisiveis(num1, num2)
    por_ambos = []
    1.upto(50) { |n| por_ambos << n if (n % num1 == 0 && n % num2 == 0) }

    por_num1 = []
    1.upto(50) { |n| por_num1 << n if n % num1 == 0 }
    por_num1 = por_num1.difference(por_ambos)

    por_num2 = []
    1.upto(50) { |n| por_num2 << n if n % num2 == 0 }
    por_num2 = por_num2.difference(por_ambos)

    [].push(por_ambos).push(por_num1).push(por_num2)
  end

  def self.soma(lista)
    soma = 0
    lista.each { |n| soma += n}
    soma
  end

  def self.combinar(numeros, letras)
    result = []
    numeros.each { |n| letras.each { |l| result << [n, l] } }
    result
  end
end
