require "./lib/bike.rb"
class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'Sorry, no bikes are available' if station_empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Sorry, the docking station is full" if station_full?
    @bikes << bike
  end


  private

  def station_empty?
    @bikes.empty?
  end

  def station_full?
    @bikes.length >= DEFAULT_CAPACITY
  end

end
