# frozen_string_literal: true

class Year
  def self.leap?(year)
    return true if (year % 4).zero? && (year % 100).nonzero?

    (year % 400).zero?
  end
end
