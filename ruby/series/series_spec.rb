require 'rspec'
require_relative 'series.rb'

describe Series do
  
  it "should return '['123456', '234567', '345678', '456789']'
      with '123456789' string and serie of 6 digits" do
    expec(Series.new('123456789').slices(6)).to eq ['123456', '234567', '345678', '456789']
  end

    it "should return '['1', '2', '3', '4', '5']'
      with '12345' string and serie of 6 digits" do
    expec(Series.new('12345').slices(1)).to eq ['1', '2', '3', '4', '5']
  end

end