require 'rspec'
require_relative 'resistor_color_duo'

describe ResistorColorDuo do
  it "Expected '32' when ['orange', 'red'] input" do
    expect(ResistorColorDuo.value(["orange", "red"])).to eq 32
  end

  it "Expected '77' when ['violet', 'violet'] input" do
    expect(ResistorColorDuo.value(["violet", "violet"])).to eq 77
  end

  it "Expected '50' when ['green', 'black'] input" do
    expect(ResistorColorDuo.value(["green", "black"])).to eq 50 
  end
end


