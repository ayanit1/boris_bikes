require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
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
