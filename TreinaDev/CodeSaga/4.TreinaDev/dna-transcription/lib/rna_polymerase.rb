class RnaPolymerase
  def transcribe(dna, beginning, ending)
    result = dna[/#{beginning}(.*?)#{ending}/m, 1]
    result.nil? || result == "" ? "Sequence not found" : result.tr("ATGC", "UACG")
  end
end
