class Squares
  def initialize(digit)
    @arr_of_digits = 1.upto(digit).map { |d| d }
  end

  def square_of_sum
    @arr_of_digits.map { |d| d }.sum**2
  end

  def sum_of_squares
    @arr_of_digits.map { |d| d**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end



