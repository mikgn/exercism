class ResistorColorTrio
  def initialize(colors)
    @colors = colors
  end

  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def label
    validation
    calculation
    create_label
  end

  private

  def validation
    raise ArgumentError unless (@colors - COLORS).empty?
  end

  def calculation
    zeros = '0' * COLORS.index(@colors.last)
    digits = @colors.first(2).map { |color| COLORS.index(color) }.join
    @value = (digits + zeros).to_i
  end

  def create_label
    if (@value % 1000).zero?
      "Resistor value: #{@value / 1000} kiloohms"
    else
      "Resistor value: #{@value} ohms"
    end
  end
end


if defined?(Minitest)
  describe 'Custom Tests' do
    describe 'Given the users list of colors' do
      it 'must not mangle borrowed list' do
        my_colors = %w[red yellow green]
        original_colors = my_colors.dup
        ResistorColorTrio.new(my_colors).label
        _(my_colors).must_equal original_colors
      end
    end
  end
end
