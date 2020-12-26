class Category
  attr_reader :name, :expenses

  def initialize(n, data)
    @name = n
    @expenses = []
    build_expenses(data)
  end

  # #vou sobreescrever o método to_s
  # def to_s
  #   name()
  # end

  def total_amount
    expenses().sum(&:amount)
  end

  def to_s
    "========== #{name()}  =>  R$ #{total_amount().round(2)} ========== "
  end

  def expenses_by_month
    result = ""
    grouped_and_ordered_expenses = expenses().group_by(&:month).sort_by { |_key, value| _key.to_i }.to_h
    grouped_and_ordered_expenses.each_pair do |key, value|
      result << "#{key}\t\tR$ #{value.sum(&:amount).round(2)}\n"
    end
    result
  end

  private

  def build_expenses(data)
    if data
      csv_data = CSV.parse(data, headers: true)
      csv_data.each do |row|
        expense_hash = row.to_h
        @expenses << Expense.new(date: expense_hash["date"],
                                 title: expense_hash["title"],
                                 amount: expense_hash["amount"],
                                 category: self)
      end
    end
  end
end
