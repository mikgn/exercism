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

  def matching_sides
    if @sides_values.uniq.length == 1
      3
    elsif @sides_values.uniq.length == 2
      2
    else
      0
    end
  end

  def equilateral?
    if triangle?
      matching_sides == 3
    end
  end

  def isosceles?
    if triangle?
      matching_sides >= 2
    end
  end

  def scalene?
    if triangle?
      matching_sides == 0
    end
  end
end

