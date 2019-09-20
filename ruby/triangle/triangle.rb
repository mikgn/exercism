class Triangle
  def initialize(sides_values)
    @sides_values = sides_values
    @a, @b, @c =  @sides_values
  end

  def triangle_inequality?
    @sides_values.all? { |side| side !=0 } &&
    @a + @b > @c &&
    @b + @c > @a &&
    @a + @c > @b
  end

  def hasNoZeroSides
    
  end

  def degenerate?
    if triangle_inequality?
      @a + @b == @c ||
      @b + @c == @a ||
      @a + @c == @b
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
    if triangle_inequality?
      matching_sides == 3
    end
  end

  def isosceles?
    if triangle_inequality?
      matching_sides >= 2
    end
  end

  def scalene?
    if triangle_inequality?
      matching_sides == 0
    end
  end
end

