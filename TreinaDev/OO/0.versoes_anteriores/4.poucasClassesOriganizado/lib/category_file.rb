class CategoryFile
  CATEGORIES_DIR = "#{__dir__}/../categories"
  attr_reader :category_name, :file

  def initialize(category_name)
    @category_name = category_name
    @file = create_file()
  end

  def add_row(row)
    file.write row
    file.close
  end

  def content()
    puts file().read()
  end

  def self.all()
    files = []
    Dir.each_child(CATEGORIES_DIR).each do |filename|
      files << new(filename.delete_suffix(".csv"))
    end
    files
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
