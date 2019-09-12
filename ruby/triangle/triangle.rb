class Triangle
  def initialize(sides_values)
    @sides_values = sides_values
  end

  def triangle?
    @sides_values.all? { |side| side !=0 } &&
    @sides_values[0] + @sides_values[1] > @sides_values[2] &&
    @sides_values[1] + @sides_values[2] > @sides_values[0] &&
    @sides_values[0] + @sides_values[2] > @sides_values[1]
  end

  def degenerate?
    if triangle?
      @sides_values[0] + @sides_values[1] == @sides_values[2] ||
      @sides_values[1] + @sides_values[2] == @sides_values[0] ||
      @sides_values[0] + @sides_values[2] == @sides_values[1]
    end
  end

  def matching_3_sides?
    @sides_values.uniq.length == 1
  end

  def matching_2_or_3_sides?
    @sides_values.uniq.length == 2 || @sides_values.uniq.length == 1
  end

  def no_matching_sides
    matching_2_or_3_sides? == false
  end

  def equilateral?
    if triangle?
      matching_3_sides?
    end
  end

  def isosceles?
    if triangle?
      matching_2_or_3_sides?
    end
  end

  def scalene?
    if triangle?
      no_matching_sides
    end
  end
end

