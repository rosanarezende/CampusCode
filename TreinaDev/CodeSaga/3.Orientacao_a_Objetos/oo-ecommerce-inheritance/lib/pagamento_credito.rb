require_relative 'pagamento'

class PagamentoCredito < Pagamento
  attr_accessor :juros

  def initialize(quantidade:, juros:, produto: Produto.new())
    super(quantidade: quantidade, produto: produto)
    @juros = juros
  end

  def atualizar_valor
    @valor += @valor * @juros/100
  end
end
