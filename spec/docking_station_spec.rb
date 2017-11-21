require "docking_station"
describe DockingStation do
    it "should release bike when bike is requested" do
        docking_station = DockingStation.new
        expect(docking_station.release_bike).to eq "Bike released."
    end
end
