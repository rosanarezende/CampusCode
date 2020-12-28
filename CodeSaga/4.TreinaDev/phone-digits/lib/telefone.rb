class Telefone
  def teclar(sequencia)
    groups = []
    sequencia.scan(/((.)\2*)/) { |x| groups.push(x[0]) }
    dictionary = {
      "2" => "a", "22" => "b", "222" => "c", 
      "3" => "d", "33" => "e", "333" => "f", 
      "4" => "g", "44" => "h", "444" => "i", 
      "5" => "j", "55" => "k", "555" => "l", 
      "6" => "m", "66" => "n", "666" => "o", 
      "7" => "p", "77" => "q", "777" => "r", "7777" => "s", 
      "8" => "t", "88" => "u", "888" => "v",
      "9" => "w", "99" => "x", "999" => "y", "9999" => "z",
    }
    temp = groups.map { |item| dictionary[item] }.join("")
    return temp if temp.chars.size < 4
    return temp.scan(/.{1,4}/).join(" ") if temp.chars.size < 9
    temp.scan(/(....)(..)(.....)/).map { |x| x.join(" ") }[0]
  end
end
