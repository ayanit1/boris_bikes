require_relative 'bike'

class DockingStation
  attr_reader :capacity, :bikes

  def initialize
    @capacity = 20
    @bikes = []
  end

  def release_bike
    raise "No bikes are avaliable" if empty?
    @bikes.pop
  end

  def dock(bike)
      raise "The dock is full" if full?
      @bikes << bike
      @bikes
  end

  private
  
  def full?
    @bikes.size == @capacity
  end

  def empty?
    @bikes.empty?
  end
end
