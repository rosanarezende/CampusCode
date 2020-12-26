class CategoryFile
  attr_reader :category_name, :file

  def initialize(category_name)
    @category_name = category_name
    @file = create_file()
  end

  def add_expense(expense)
    file.write expense
    file.close
  end

  def read_expenses()
  end

  private

  def create_file()
    new_category_path = "./categories/#{category_name}.csv"
    new_category_file = File.open(new_category_path, "a+")
    if File.empty?(new_category_file)
      new_category_file.puts "date, category, title, amount"
    end
    new_category_file
  end
end
