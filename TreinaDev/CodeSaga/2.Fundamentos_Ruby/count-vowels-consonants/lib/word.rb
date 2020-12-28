class Word
  def remove_accents(phrase)
    accents = {
      ["á", "à", "â", "ä", "ã"] => "a", ["Ã", "Ä", "Â", "À"] => "A",
      ["é", "è", "ê", "ë"] => "e", ["Ë", "É", "È", "Ê"] => "E",
      ["í", "ì", "î", "ï"] => "i", ["Î", "Ì"] => "I",
      ["ó", "ò", "ô", "ö", "õ"] => "o", ["Õ", "Ö", "Ô", "Ò", "Ó"] => "O",
      ["ú", "ù", "û", "ü"] => "u", ["Ú", "Û", "Ù", "Ü"] => "U",
      ["ç"] => "c", ["Ç"] => "C",
      ["ñ"] => "n", ["Ñ"] => "N",
    }
    accents.each do |ac, rep|
      ac.each do |s|
        phrase = phrase.gsub(s, rep)
      end
    end
    phrase
  end

  def vowels_count(phrase)
    remove_accents(phrase).chars.count { |c| c =~ /[aeiouy]/i }
  end

  def consonants_count(phrase)
    letters = phrase.gsub(/[ .,]+/,"").chars.count
    vowels = vowels_count(phrase)
    letters - vowels
  end
end
