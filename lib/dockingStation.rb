require "./lib/bike.rb"
class DockingStation
  attr_reader :available
  @available_bikes = 5

  def initialize
    @available_bikes = available
  end

  def release_bike
    Bike.new
    #@@count -= 1
  end

  def dock(bike)
    #@@count += 1
  end
end
