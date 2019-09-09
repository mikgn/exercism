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

  def equilateral?
    if triangle? 
      @sides_values[0] == @sides_values[1] &&
      @sides_values[1] == @sides_values[2] 
    end
  end

  def isosceles?
    if triangle? 
      @sides_values[0] == @sides_values[1] && 
      @sides_values[0] + @sides_values[1] > @sides_values[2] ||
      @sides_values[0] == @sides_values[2] &&
      @sides_values[0] + @sides_values[2] > @sides_values[1] ||
      @sides_values[1] == @sides_values[2] &&
      @sides_values[1] + @sides_values[2] > @sides_values[0] 
    end
  end

  def scalene?
    if triangle?  
      @sides_values[0] != @sides_values[1] &&
      @sides_values[0] != @sides_values[2] &&
      @sides_values[1] != @sides_values[2]
    end
  end
end

