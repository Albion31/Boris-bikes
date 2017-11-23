require "docking_station"
require "bike"

describe DockingStation do

  it { is_expected.to respond_to :release_bike}
  
  it 'should get a bike' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it "should not release bike when there are none available" do
    expect { subject.release_bike }.to raise_error("There are no bikes available")
  end

  it "should not accept more bikes than its capacity" do
    20.times{subject.dock(Bike.new)}
    expect {subject.dock(Bike.new)}.to raise_error("There are no capacity")
  end
end
