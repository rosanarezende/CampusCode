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
    return "rewards".upcase if expense["title"].include? "Rewards"
    return "iof".upcase if expense["title"].include? "IOF"
    return expense["category"].upcase if expense["category"]
    expense["amount"].to_f.positive? ? "juros_multa".upcase : "pagamentos".upcase
  end
end
