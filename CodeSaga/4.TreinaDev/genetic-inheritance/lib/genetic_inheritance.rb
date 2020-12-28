class GeneticInheritance
  DICTIONARY = { "rR" => "Rr", "aA" => "Aa" }

  def predict_proportions(first_individual, second_individual)
    a, b = first_individual.chars, second_individual.chars
    []
      .push([a[0], b[0]].join(""))
      .push([a[0], b[1]].join(""))
      .push([a[1], b[0]].join(""))
      .push([a[1], b[1]].join(""))
      .map { |x| DICTIONARY.include?(x) ? DICTIONARY[x] : x }
      .reduce(Hash.new(0)) { | all, item| all[item] += 1; all }
      .map { |x, y| (y == 4 ? [x, (1 / 1)] : y == 2 ? [x, (1 / 2.to_r)] : [x, (y / 4.to_r)]) }
  end
end
