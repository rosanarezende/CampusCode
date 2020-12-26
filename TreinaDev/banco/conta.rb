require_relative 'cliente'

class Conta
  # atributos somente leitura
  attr_reader :numero, :titular

  # atributos q podem ser lidos e alterados
  attr_accessor :saldo

  # a conta recebe argumentos
  def initialize(numero, titular, saldo)
    # e terá os seguintes atributos (alguns dinâmicos, outros pré-definidos)
    @numero = numero
    @titular = titular
    @saldo = saldo
    # @tipo = "corrente" #digo q toda conta é corrente
  end

  # e posso criar diversos métodos

  def sacar(valor)
    if(saldo >= valor)
      self.saldo -= valor
    else
      puts "Não foi possível executar a transação. Saldo insuficiente"
    end
  end

  def depositar(valor)
    self.saldo += valor
  end

  def transferir(conta_destino, valor)
    sacar(valor)
    if(saldo >= valor)
      conta_destino.depositar(valor)
    end
  end

end
