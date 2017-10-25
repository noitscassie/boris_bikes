require "./lib/bike.rb"
class DockingStation

  def initialize
    @available = []
  end

  attr_reader :available

  def release_bike
    Bike.new
  end

  def dock(bike)
    @available << bike
  end
end
