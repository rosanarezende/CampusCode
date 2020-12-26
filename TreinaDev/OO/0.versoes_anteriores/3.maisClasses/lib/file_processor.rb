class FileProcessor
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def process()
    file = File.read(file_path)
    csv = CSV.parse(file, headers: true)

    categories = []
    csv.each do |row|
      expense = Expense.new(row.to_h)
      category = Category.new(expense.category)
      category.add_expense(row)
      categories << category

      # category = fetch_category(expense)
      # CategoryFile.new(category).add_expense(row)
    end
    categories
  end
end
