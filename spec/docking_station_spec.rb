require "docking_station"

describe DockingStation do
  #test with basic structure
  # it 'has a method called release_bike' do
  #   docking_station = DockingStation.new
  #   expect(docking_station).to respond_to(:release_bike)
  # end

  #test with one liner
  it { is_expected.to respond_to :release_bike}

  it 'should get a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
