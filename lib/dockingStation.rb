require "./lib/bike.rb"
class DockingStation

  def initialize
    @available = 5
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @available += 1
  end
end
