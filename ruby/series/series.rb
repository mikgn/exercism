class Series
  def initialize string_of_digits
    @string_of_digits = string_of_digits
  end

  def slices length_of_serie
    if @string_of_digits.size < length_of_serie
      raise ArgumentError
    else
      arr_of_digits = @string_of_digits.split('')
      loops = @string_of_digits.size - length_of_serie + 1
      answer = []
      loops.times do
        answer << arr_of_digits.first(length_of_serie).join
        arr_of_digits.shift
      end
      answer
    end
  end
end





