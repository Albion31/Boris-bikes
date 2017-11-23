require_relative 'bike'

class DockingStation

attr_reader :bike
  def initialize
    @bikes = []
  end

  def dock(bike)
    raise "There are no capacity" if @bikes.length >= 20
    @bikes << bike
  end

  def release_bike
    raise "There are no bikes available" if @bikes.empty?
    @bikes.pop
  end
end
