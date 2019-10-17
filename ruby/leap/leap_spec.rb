require 'rspec'
require_relative 'leap.rb'

describe Year do

  it "Expected 'false', 2015 is not a leap year." do
    expect(Year.leap?(2015)).to eq false
  end

  it "Expected 'true', 2000 is a leap year." do
    expect(Year.leap?(2000)).to eq true
  end
end