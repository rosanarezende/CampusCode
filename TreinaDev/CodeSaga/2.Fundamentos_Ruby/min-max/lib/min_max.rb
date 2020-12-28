class MinMax
  def find(values)
    numbers = values.split.map { |x| x.to_i != 0 ? x.to_i : x }
    ordered = numbers.sort { |a, b| (a.is_a?(Numeric) ? a : a.chars.count) <=> (b.is_a?(Numeric) ? b : b.chars.count) }
    "Mínimo: #{ordered.first}; Máximo: #{ordered.last}"
  end
end
