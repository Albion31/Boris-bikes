require "docking_station"
require "bike"

describe DockingStation do

  let(:bike) { double(:bike, :set_working= => true, :working? => true) }

  it { is_expected.to respond_to :release_bike}

  # it 'should get a bike' do
  #   bike = bike
  #   expect(bike).to be_working
  # end

  it 'docks a bike' do
    expect(subject.dock(bike)).to eq [bike]
  end

  it "should not release bike when there are none available" do
    expect { subject.release_bike }.to raise_error("There are no bikes available")
  end

  it "should not accept more bikes than its capacity" do
    DockingStation::DEFAULT_CAPACITY.times{subject.dock(bike)}
    expect {subject.dock(bike)}.to raise_error("There are no capacity")
  end

  it "should be able to change capacity when necessary" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    expect(subject.capacity = 30).to eq 30
  end

  it "should be able to set a different capacity" do
    docking_station = DockingStation.new(100)
    expect(docking_station.capacity).to eq 100
  end

  it "should accept broken bikes" do
    allow(bike).to receive(:working?) {false}
    subject.dock(bike)
    expect(bike.working?).to eq false
  end

  it "should accept working bike without an argument" do
    subject.dock(bike)
    expect(bike.working?).to eq true
  end

  it "should not release broken bikes" do
    allow(bike).to receive(:working?) {false}
    subject.dock(bike)
    expect{subject.release_bike}.to raise_error("Bike cannot be released as broken")
  end
end
