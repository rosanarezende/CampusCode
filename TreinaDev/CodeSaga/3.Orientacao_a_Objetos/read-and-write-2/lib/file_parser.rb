class FileParser
  def to_binary(string)
    string.to_i.to_s(2)
  end

  def to_binary_file(string)
    array = string.split(";")
    array.each do | n |
      binary = to_binary(n)
      new_file = File.open('data/data.txt', "a+")
      new_file.write binary + "\n"
      new_file.close
    end
  end
end
