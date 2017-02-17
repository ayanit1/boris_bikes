require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def initialize
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
    @bikes.size == DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
