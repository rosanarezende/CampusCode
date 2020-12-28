class Arrays
  def self.converte_impares_por(lista, numero)
    impares = []
    multiplicados = []
    lista.each_with_index do |item, index|
      if item % 2 != 0
        impares << lista[index]
        multiplicados << lista[index] * numero 
      end
    end
    [].push(impares).push(multiplicados)
  end

  def self.converte_pares_por(lista, numero)
    pares = []
    multiplicados = []
    lista.each_with_index do |item, index|
      if item % 2 == 0
        pares << lista[index]
        multiplicados << lista[index] * numero 
      end
    end
    [].push(pares).push(multiplicados)
  end
end
