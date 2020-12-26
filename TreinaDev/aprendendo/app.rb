# alice = { nome: 'Alice', nota: 10, disciplina: 'Matemática' }
# heloisa = { nome: 'Heloisa', nota: 9, disciplina: 'Geografia' }
# laura = { nome: 'Laura', nota: 8, disciplina: 'Física' }
# meninas = [alice, heloisa, laura]

# def imprime_meninas(nome, nota, disciplina)
#   puts "#{nome} tirou nota #{nota} em #{disciplina}"
# end

# meninas.each do |menina|
#   imprime_meninas(menina[:nome], menina[:nota], menina[:disciplina])
# end

# numeros = [5, 3, 24, 6, 72, 7, 86, 54, 5, 97]
# i = 0
# valor = 0

# while i < numeros.length
#   valor = numeros[i] if numeros[i] > valor
#   i += 1
# end

# puts valor

# class Algorithm
#   def iterate(array)                                                             
#     temp = 1
#     index = 0
#     result = [] 
#     for value in array do
#       if temp == index + 1
#         result << (value * 2) + 1
#         temp = (value * 2) + 1
#       else
#         result << value
#       end
#       index = index + 1
#     end
#     return result
#   end
# end

# puts Algorithm.new.iterate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]) 


pessoas = ['Caio', 'Marina', 'Suzana']
outras_pessoas = ['Luiza', 'Roberto']

outras_pessoas.each do |pessoa|
  pessoas << pessoa
end

puts pessoas[3]
