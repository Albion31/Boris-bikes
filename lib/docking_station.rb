require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

attr_reader :docking_station
attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @docking_station = []
    @capacity = capacity
  end

  def dock(bike, report = true)
    raise "There are no capacity" if full?
    bike.set_working = report
    @docking_station << bike
  end

  def release_bike
    raise "There are no bikes available" if empty?
    @docking_station.pop
  end

  private
    def full?
      @docking_station.count >= @capacity
    end

    def empty?
      @docking_station.empty?
    end
end
