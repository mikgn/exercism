require 'rspec'
require_relative 'triangle.rb'

describe Triangle do
  it "Expected 'true', triangle [2, 2, 2] is equilateral." do
    expect(Triangle.new([2, 2, 2]).equilateral?).to eq true
  end

  it "Expected 'false', triangle [4, 4, 4] is not scalene." do
    expect(Triangle.new([4, 4, 4]).scalene?).to eq false
  end

  it "Expected 'true', triangle [5, 5, 3] is isosceles." do
    expect(Triangle.new([5, 5, 3]).isosceles?).to eq true
  end

  it "Expected 'true', triangle [2, 3, 4] is not isosceles." do
    expect(Triangle.new([2, 3, 4]).isosceles?).to eq false
  end

end