require_relative 'bike'

class DockingStation

attr_reader :bike
  def initialize
    @bike
  end

  def release_bike
    raise "There are no bikes available" if @bike == nil
    @bike

    # Bike.new
  end

  def dock(bike)
    @bike = bike
  end

end
