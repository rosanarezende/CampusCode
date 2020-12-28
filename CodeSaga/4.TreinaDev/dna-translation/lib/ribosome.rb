class Ribosome
  DICTIONARY = {
    "UCA" => "aa1", "AAC" => "aa2", "UUU" => "aa3", "AAA" => "aa4",
    "AUC" => "aa5", "CCA" => "aa6", "GGU" => "aa7", "GCC" => "aa8",
  }
  def translate(rna_messenger)
    rna_t = rna_messenger.tr("UAGC", "AUCG").scan(/.{3}/)
    rna_t.map { |x| return "Translation aborted" if !DICTIONARY.include?(x) }
    rna_t.map { |x| DICTIONARY[x] }.join("-")
  end
end
