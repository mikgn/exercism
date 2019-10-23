require 'rspec'
require_relative 'acronym.rb'

describe Acronym do
  it "should return 'OOP' if given 'Object Oriented Programming'" do
    expect(Acronym.abbreviate "Object Oriented Programming").to eq "OOP"
  end

  it "should return 'OOP' if given string without whitespace,lower and upper case" do
    expect(Acronym.abbreviate "Object-oriented Programming").to eq "OOP"
  end

  it "should return 'SIMUFTA', with consecutive delimiters " do
    expect(Acronym.abbreviate "Something - I made up from thin air").to eq "SIMUFTA"
  end
end

