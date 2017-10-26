require "./lib/bike.rb"
class DockingStation
  attr_reader :bike

  def release_bike
    raise 'Sorry, no bikes are available'
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
end
