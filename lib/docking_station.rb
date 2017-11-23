require_relative 'bike'

class DockingStation

attr_reader :bikes
  def initialize
    @docking_station = []

  end

  def dock(bike)
    raise "There are no capacity" if full?
    @docking_station << bike
  end

  def release_bike
    raise "There are no bikes available" if empty?
    @docking_station.pop
  end

  private
    def full?
      return true if @docking_station.length >= 20
    end

    def empty?
      return true if @docking_station.empty?
    end
end
