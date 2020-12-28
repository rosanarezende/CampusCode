class RnaSplicer
  def splice(rna, introns)
    introns.each { |x| rna = rna.sub(x, "") }
    rna
  end
end
