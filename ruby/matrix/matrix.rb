# #1

class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = matrix.each_line.map { |row| row.split.map(&:to_i) }
    @columns = rows.transpose
  end
end

# #2

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







