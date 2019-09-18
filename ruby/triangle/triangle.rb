class Triangle
  def initialize(sides_values)
    @sides_values = sides_values
    @a, @b, @c =  @sides_values
  end

  def is_triangle?
    @sides_values.all? { |side| side !=0 } &&
    @a + @b > @c &&
    @b + @c > @a &&
    @a + @c > @b
  end

  def degenerate?
    if is_triangle?
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
    if is_triangle?
      matching_sides == 3
    end
  end

  def isosceles?
    if is_triangle?
      matching_sides >= 2
    end
  end

  def scalene?
    if is_triangle?
      matching_sides == 0
    end
  end
end

