require "bike"

describe Bike do
  it "should be working" do
    bike = Bike.new
    expect(bike).to be_working
  end
end
