require 'csv'

puts 'Processador de Arquivos Nubank'

# PRA CADA CATEGORIA QUEREMOS GERAR UM ARQUIVO
# MAS NUM PRIMEIRO MOMENTO VAMOS LER E PROCESSAR UM ARQUIVO DE CADA VEZ - DEPOIS JUNTAR

# ler arquivo
file = File.read('./data/nubank-2020-01.csv')

# como o arquivo é pequeno usar o parse, instanciando um CSV -> quando é muito grande usamos foreach
  # e como nosso arquivo tem cabeçalho, usamos headers tb
csv = CSV.parse(file, headers: true)

# o parse nos retorna algo iterável
csv.each do |row|
  
  # transformo cada row em 1 hash, facilitando o tratamento
  expense = row.to_h

  # se o arquivo existir, vou criar um arquivo csv pra cada categoria nele
    #a+ : ele consegue escrever... e se não existir o arquivo ele cria
  new_category_path = "./categories/#{expense['category']}.csv"
  new_category_file = File.open(new_category_path, "a+")

  #se o arquivo estiver vazio, coloque o headers primeiro
  if new_category_file.size == 0
    #ele retornou um array, mas queremos uma linha - e usamos puts pra quebrar a linha no final
    new_category_file.puts csv.headers.join(',') 
  end

  #agora escreva a linha no arquiv
  new_category_file.write row

  #e feche o arquivo pra acabar o loop - pq como ele não fecha o arquivo ele sempre considera q o arquivo tá vaioz, até o fim do each
  new_category_file.close
end
