class Category
  def initialize(name)
    @file = CategoryFile.new(name)
  end

  def expenses()
    # @file.read()
  end

  def add_expense(expense)
    @file.add_expense(expense)
  end
end
