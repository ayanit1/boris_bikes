require_relative 'bike'

class DockingStation
  attr_reader :capacity, :bikes

  def initialize
    @capacity = 20
    @bikes = []
  end

  def release_bike
    raise "No bikes are avaliable" unless @bikes.size > 0
    bike = @bikes.pop
    return bike
  end

  def dock(bike)
    if @bikes.size == @capacity
      raise "The dock is full"
    else
      @bikes << bike
      @bikes[-1]
    end
  end
end
