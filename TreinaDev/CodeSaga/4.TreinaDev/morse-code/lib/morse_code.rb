class MorseCode
  def traduzir(codigo_morse)
    dictionary = {
      "-----" => 0, ".----" => 1, "..---" => 2, "...--" => 3, "....-" => 4,
      "....." => 5, "-...." => 6, "--..." => 7, "---.." => 8, "----." => 9,
    }
    codigo_morse.split("/").map { |item| dictionary[item] }.join("")
  end
end
