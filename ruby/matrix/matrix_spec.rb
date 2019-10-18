require 'rspec'
require_relative 'matrix.rb'

describe Matrix do
  it "should extract a column '1, 4, 7, 8'" do
    expect(Matrix.new("1 2 3\n4 5 6\n7 8 9\n8 7 6").columns[0]).to eq [1, 4, 7, 8]
  end

  it "should extract a row '8, 44, 15'" do
    expect(Matrix.new("7 23 52\n8 44 15\n9 19 21").rows[1]).to eq [8, 44, 15]
  end

  it "should extract a row '8, 44, 15'" do
    expect(Matrix.new("4 7 52\n81 8 15\n91 9 21").columns[1]).to eq [7, 8, 9]
  end
end


