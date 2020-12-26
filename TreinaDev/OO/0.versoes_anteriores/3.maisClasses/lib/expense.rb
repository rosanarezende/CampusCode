class Expense
  attr_reader :date, :title, :amount

  def initialize(args)
    @date = args["date"]
    @category = args["category"]
    @title = args["title"]
    @amount = args["amount"]
  end

  def category()
    return "rewards" if title().include? "Rewards"
    return "iof" if title().include? "IOF"
    return @category if @category
    amount().to_f.positive? ? "juros_multa" : "pagamentos"
  end
end
