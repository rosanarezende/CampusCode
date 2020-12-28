class EnigmaCypher
  ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

  def find_numbers(string)
    string.chars.map { |x| ALPHABET.index(x) }
  end

  def merge_info(info1, info2)
    find_numbers(info1).concat(find_numbers(info1))
      .zip(find_numbers(info2))
      .select { |a, b| !b.nil? }
  end

  def decrypt(code, keyword)
    merge_info(keyword, code)
      .map { |a, b| b - a < 0 ? b - a + 26 : b - a }
      .map { |x| ALPHABET[x] }
      .join("")
  end

  def encrypt(phrase, keyword)
    merge_info(keyword, phrase)
      .map { |a, b| a + b > 26 ? a + b - 26 : a + b }
      .map { |x| ALPHABET[x] }
      .join("")
  end
end
