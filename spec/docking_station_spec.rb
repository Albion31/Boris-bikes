require "docking_station"
describe DockingStation do
    it "should return true when bike is avalaible" do
        person = DockingStation.new
        expect(person.avalaible?).to eq true
    end
end
