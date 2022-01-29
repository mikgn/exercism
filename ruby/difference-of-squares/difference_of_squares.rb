# frozen_string_literal: true

class Squares
  def initialize(digit)
    @arr_of_digits = (1..digit).to_a
  end

  def square_of_sum
    arr_of_digits.inject(&:+)**2
  end

  def sum_of_squares
    arr_of_digits.map { |d| d**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  attr_reader :arr_of_digits
end
