class CategoryFile
  # ========== atributos ==========
  attr_reader :category_name, :file

  # ========== construtor ==========
  def initialize(category_name)
    @category_name = category_name
    @file = create_file() # chamo o método privado de criar arquivo assim q a classe é instanciada
  end

  # ========== métodos públicos ==========
  def add_expense(expense)
    file.write expense
    file.close
  end

  # ========== métodos privados ==========
  private

  def create_file()
    new_category_path = "./categories/#{category_name}.csv" #monta uma string com o caminho do arquivo... usar ./ pq parte do app.rb, q é onde está sendo executado
    # estamos tendo um problema, pq o primeiro gerado é um arquivo sem nome... não tem categoria, entra aqui

    new_category_file = File.open(new_category_path, "a+") # diferente do read, o open tenta abrir o arquivo... passamos o caminho e tb um parâmetro... a+ significa q se não existir o arquivo, cria, e depois escreve no final do arquivo

    if File.empty?(new_category_file) #se o arquivo está vazio
      # new_category_file.puts csv.headers.join(',')
      new_category_file.puts "date, category, title, amount" #coloca essa linha
    end

    new_category_file # é o retorno... colocar 'return' é opcional
  end
end
