require_relative 'bike'

class DockingStation
  attr_reader :bike, :counter

  def initialize
    @counter = true
  end

  def release_bike
    if @counter == true
      @bike = Bike.new
      @counter = false
      return @bike
    else
      raise "error"
    end
  end

  def dock(bike)
    @bike = bike
    @counter = true
    return @bike
  end

end
