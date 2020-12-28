class Produto
  attr_accessor :nome, :categoria, :estoque, :preco

  def initialize(nome:, categoria: 'Geral', estoque:, preco:)
    @nome = nome
    @categoria = categoria
    @estoque = estoque
    @preco = preco
  end

end
