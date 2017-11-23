require "docking_station"
require "bike"

describe DockingStation do
  #test with basic structure
  # it 'has a method called release_bike' do
  #   docking_station = DockingStation.new
  #   expect(docking_station).to respond_to(:release_bike)
  # end

  #test with one liner
  it { is_expected.to respond_to :release_bike}


  it 'should get a bike' do
    bike = Bike.new
    expect(bike).to be_working
  end

  # it { is_expected.to respond_to(:dock).with(1).argument}

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  # docked_bike method
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.dock(bike)).to eq(bike)
  end

  it "should not release bike when there are none available" do
    # bike = Bike.new
    # subject.dock(bike)
    # # expect(subject.dock(newbike)).to be_a Array
    # expect(subject.release_bike).to eq(bike)
    expect { subject.release_bike }.to raise_error("There are no bikes available")
  end

end
