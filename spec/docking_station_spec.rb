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
    a_bike = subject.release_bike
    expect(a_bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument}
  # docked_bike method
  it 'should return a bike when called on docking station' do
    a_bike = subject.release_bike
    subject.dock(a_bike)
    expect(subject.docked_bike).to eq(a_bike)
  end
end
