class DockingStation
  attr_reader :bikes, :broken_bikes, :capacity, :spare_capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @broken_bikes = []
    @capacity = capacity
    @spare_capacity = @capacity
  end

  def release_bike
    fail 'Sorry, no bikes are available' if station_empty?
    @bikes.pop
    @spare_capacity += 1
  end

  def dock(bike)
    fail "Sorry, the docking station is full" if station_full?
    bike.working? ? @bikes << bike : @broken_bikes << bike
    @spare_capacity -= 1
  end

  def pass_broken_bikes
    broken_bikes = @broken_bikes
    @broken_bikes = []
    broken_bikes
  end

  def receive_fixed_bikes(bikes)
    bikes.each { |bike| dock(bike)}
  end

  private

  def station_empty?
    @bikes.empty?
  end

  def station_full?
    @bikes.length + @broken_bikes.length >= DEFAULT_CAPACITY
  end

end
