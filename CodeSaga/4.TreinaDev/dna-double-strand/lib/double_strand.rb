class DoubleStrand
  def complementary_strip(strip)
    strip.chars.map do |item|
      case item
        when "A" then "T"
        when "T" then  "A"
        when "G" then "C"
        when "C" then "G"
      end
    end.join('')
  end
end
