require_relative 'bike'

class DockingStation

attr_reader :docked_bike

  def release_bike
    Bike.new
  end

  def dock(a_bike)
    @docked_bike = a_bike
  end

end
