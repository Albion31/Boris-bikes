class Bike
  # attr_reader :working?
  # attr_writer :working

  def initialize
    @working = true
  end

  def working?
     @working
  end

  def set_working=(answer)
    @working = answer
  end
end
