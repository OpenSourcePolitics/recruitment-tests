require 'Zombie'
require 'rspec'

describe Zombie do

  it "is named Ash"
  zombie = Zombie.new
  zombie.name.should == 'Ash'
end
