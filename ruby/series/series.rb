# frozen_string_literal: true

class Series
  def initialize(string_of_digits)
    @string_of_digits = string_of_digits.chars
  end

  def slices(length_of_serie)
    raise ArgumentError if @string_of_digits.size < length_of_serie

    @string_of_digits.each_cons(length_of_serie).map(&:join)
  end
end
