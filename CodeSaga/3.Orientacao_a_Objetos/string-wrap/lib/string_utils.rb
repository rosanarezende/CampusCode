class StringUtils
  def wrap(frase, tamanho)
    qtdLetras = 0
    novoTexto = ""
    frase.split.each do |p|
      if qtdLetras + p.chars.count > tamanho
        qtdLetras = 0
        novoTexto = novoTexto.slice 0 .. -2
        novoTexto += "\n"
      end
      novoTexto += p + " "
      qtdLetras += p.chars.count + 1
    end
    novoTexto.slice 0 .. -2
  end
end
