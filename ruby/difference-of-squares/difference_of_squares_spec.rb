require 'rspec'
require './difference_of_squares.rb'

describe Squares do
  it "should return '225' if 5 given with square_of_sum method" do
    expect(Squares.new(5).square_of_sum).to eq 225
  end

  it "should return '338_350' if 100 given with sum_of_squares method" do
    expect(Squares.new(100).sum_of_squares).to eq 338_350
  end

  it "should return '170' if 100 given with difference method" do
    expect(Squares.new(5).difference).to eq 170
  end
end
