class FileParser
  def to_integer(string)
    string.to_i(2)
  end

  def convert(file_path)
    file = File.read(file_path).split
    file.map { |row| to_integer(row) }.sum
  end
end
