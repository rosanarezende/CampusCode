class FileProcessor
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def process()
    file = File.read(file_path)
    csv = CSV.parse(file, headers: true)

    csv.each do |row|
      expense = row.to_h
      category = fetch_category(expense)
      CategoryFile.new(category).add_row(row)
    end
  end

  private

  def fetch_category(expense)
    return "rewards" if expense["title"].include? "Rewards"
    return "iof" if expense["title"].include? "IOF"
    return expense["category"] if expense["category"]
    expense["amount"].to_f.positive? ? "juros_multa" : "pagamentos"
  end
end
