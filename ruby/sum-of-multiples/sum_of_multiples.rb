class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(num)
    arr = []

    1.upto(num - 1) .map do |a|
     @numbers.map { |number| arr << a if a % number == 0 }
    end

    answer = arr.uniq.inject(:+)

    if answer == nil
      0
    else
      answer
    end
  end
end






