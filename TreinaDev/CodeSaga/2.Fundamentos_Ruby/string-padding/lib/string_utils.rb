class StringUtils
  def padding(frase, padding_array)
    top, left, botton, right = padding_array
    top, left, botton, right = "\n" * top, " " * left, "\n" * botton, " " * right
    top + left + frase + right + botton
  end
end
