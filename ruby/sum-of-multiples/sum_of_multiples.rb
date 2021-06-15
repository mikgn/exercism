# frozen_string_literal: true

class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(num)
    arr = []

    1.upto(num - 1).map do |a|
      @numbers.map { |number| arr << a if (a % number).zero? }
    end

    answer = arr.uniq.inject(:+)

    answer.nil? ? 0 : answer
  end
end
