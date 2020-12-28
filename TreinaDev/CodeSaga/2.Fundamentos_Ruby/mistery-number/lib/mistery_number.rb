class MisteryNumber
  def calculate(operation)
    operation = operation.split("=")
    0.upto(500000) do |n|
      return n if eval(operation[0].gsub(/[?]+/, n.to_s)) == operation[1].to_i
    end
  end
end
