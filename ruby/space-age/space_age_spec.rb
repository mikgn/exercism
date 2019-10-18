require 'rspec'
require_relative 'space_age.rb'


describe SpaceAge do
  it "should return '1.32' solar year on Mercury when input 10_000_000 seconds" do
    expect(sprintf "%.2f", SpaceAge.new(10_000_000).on_mercury).to eq "1.32"
  end

  it "should return '0.03' solar year on Uranus when input 77_000_000 seconds" do
    expect(sprintf "%.2f", SpaceAge.new(77_000_000).on_uranus).to eq "0.03"
  end

  it "should return '0.22' solar year on earth when input 7_000_000 seconds" do
    expect(sprintf "%.2f", SpaceAge.new(7_000_000).on_earth).to eq "0.22"
  end
end


