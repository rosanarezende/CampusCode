class Pagamento
  attr_accessor :quantidade, :preco, :produto, :valor
  def initialize(quantidade:, preco:, produto: 'Sem nome')
    @quantidade = quantidade
    @preco = preco
    @produto = produto
    @valor = calcular_valor()
  end

  def calcular_valor
    quantidade() * preco()
  end

  def aplicar_desconto(porcentagem)
    self.valor -= porcentagem
  end

end
