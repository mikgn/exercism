class ResistorColorTrio
  def initialize(colors)
    @colors = colors
  end

  COLORS =  %w(black brown red orange yellow green blue violet grey white)

  def label
    raise ArgumentError if (@colors - COLORS).empty? != true
      zeros = "0" * COLORS.index(@colors.last)
      @colors.pop
      digits = @colors.map { |color| COLORS.index(color) }.join
      n = (digits + zeros).to_i
    if n % 1000 == 0
      "Resistor value: #{n/1000} kiloohms"
    else
      "Resistor value: #{n} ohms"
    end
  end
end








