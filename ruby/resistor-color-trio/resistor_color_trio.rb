class ResistorColorTrio
  def initialize(colors)
    @colors = colors
  end

  COLORS =  %w(black brown red orange yellow green blue violet grey white)

  def label
    raise ArgumentError unless (@colors - COLORS).empty?

    zeros = "0" * COLORS.index(@colors.last)
    digits = @colors.first(2).map { |color| COLORS.index(color) }.join
    n = (digits + zeros).to_i

    if (n % 1000).zero?
      "Resistor value: #{n/1000} kiloohms"
    else
      "Resistor value: #{n} ohms"
    end
  end
end


if defined?(Minitest)
  describe 'Custom Tests' do
    describe 'Given the users list of colors' do
      it 'must not mangle borrowed list' do
        my_colors = %w(red yellow green)
        original_colors = my_colors.dup
        ResistorColorTrio.new(my_colors).label
        _(my_colors).must_equal original_colors
      end
    end
  end
end