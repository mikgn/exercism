# frozen_string_literal: true

class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = matrix.each_line.map { |row| row.split.map(&:to_i) }
    @columns = rows.transpose
  end
end

# class Matrix
#   def initialize(matrix)
#     @matrix = matrix
#   end

#   def rows
#     @rows ||= @matrix.each_line.map { |row| row.split.map(&:to_i) }
#   end

#   def columns
#     @columns ||= rows.transpose
#   end
# end
