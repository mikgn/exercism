require 'rspec'
require_relative 'sum_of_multiples.rb'

describe SumOfMultiples do
  it "Expected '23' if 10 given, that are multiples of 3 or 5" do
    expect(SumOfMultiples.new(3, 5).to(10)).to eq 23
  end

  it "Expected '4_419' if 150 given that are multiples of 5 5, 6 and 8" do
    expect(SumOfMultiples.new(5, 6, 8).to(150)).to eq 4_419
  end
end

