require "./conta"

class ContaComTaxa < Conta
  TAXA = 5

  def transferir(conta_destino, valor)
    valor_com_taxa = valor + TAXA
    super(conta_destino, valor_com_taxa)
  end

end

cleiton = Cliente.new("Cleiton", "Dias")
conta_cleiton = Conta.new(1, cleiton, 100)

rosana = Cliente.new("Rosana", "Rezende")
conta_rosana = ContaComTaxa.new(2, rosana, 50)

begin
  conta_rosana.transferir(conta_cleiton, 46)
rescue StandardError => meu_erro
  p "Não foi possível transferir: #{meu_erro.message}"
end
