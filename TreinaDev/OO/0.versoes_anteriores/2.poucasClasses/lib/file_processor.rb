class FileProcessor
  # ========== atributos ==========
  attr_reader :file_path

  # ========== construtor ==========
  def initialize(file_path)
    @file_path = file_path
    # metodo_privado() # podemos chamar um método privado direto no construtor, mas é algo atípico
  end

  # ========== métodos públicos ==========
  def process()
    # File e CSV são métodos de classe... não precisei fazer .new()
    # lembrando q em Ruby a classe é um objeto... se eu fizer FileProcessor.class() ele me diz q é um objeto do tipo Class, então posso usar os métodos de Class... se eu fizer FileProcessor.methods() já vejo o new()

    file = File.read(file_path) # lê todo conteúdo do arquivo e transforma em 1 string

    csv = CSV.parse(file, headers: true) # a gente informa q a string tem cabeçalhos, q servirão como chaves... o restante são valores... ele cria um array com hash de chave e valor => ex: [{ "date": "2019-12-19", "category": "serviços", "title": "Netflix", "amount": 30 }, {...}, ...]

    csv.each do |row| #string crua
      expense = row.to_h # converto a linha em hash

      # CategoryFile.new(expense["category"]).add_expense(row) # cada categoria vira um arquivo - #ex: serviços.csv... e adiciono as despesas em suas linhas correspondentes

      # -- refatorei --
      # pra evitar criar um arquivo vazio
      category = fetch_category(expense)
      CategoryFile.new(category).add_expense(row)
    end
  end

  # ========== métodos privados ==========
  private

  # #esse é apenas de exemplo
  # def metodo_privado
  #   puts "oi, sou um método privado"
  # end

  def fetch_category(expense)
    # if expense["category"].nil?
    #   if expense["amount"].to_f.positive?
    #     "juros_multa"
    #   else
    #     "pagamentos"
    #   end
    # else
    #   expense["category"]
    # end

    # ## -- refatorei --
    # #Guard Clause
    # # return expense["category"] unless expense["category"].nil? # unless ou if ! ... ou da forma abaixo, q é mais comum
    # return expense["category"] if expense["category"]

    # #Ternário
    # expense["amount"].to_f.positive? ? "juros_multa" : "pagamentos"

    ## -- refatorei novamente --
    return "rewards" if expense["title"].include? "Rewards"
    return "iof" if expense["title"].include? "IOF"
    return expense["category"] if expense["category"]
    expense["amount"].to_f.positive? ? "juros_multa" : "pagamentos"
  end
end
