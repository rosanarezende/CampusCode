class Expense
  attr_reader :title, :category, :amount

  #keyword arguments - para a ordem não impactar
  def initialize(date:, title:, amount:, category:)
    @date = Date.parse(date)
    @title = title
    @amount = amount.to_f #mas não é o ideal para manipular valores
    @category = category
  end

  #ao invés de criar sozinho lá em cima, faço meu próprio date
  def date
    "#{@date.day}/#{month}"
  end

  def month
    "#{@date.month}/#{@date.year}"
  end

  def to_s
    # "#{category}\t#{date}\t#{title}\t#{amount}"
    "#{date}\t#{title}\t#{amount}"
  end
end
