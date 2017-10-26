require "./lib/bike.rb"
class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
    @capacity = 20
  end

  def release_bike
    if @bikes.empty?
      raise 'Sorry, no bikes are available'
    end
    Bike.new
  end

  def dock(bike)
    if self.bikes.length >= @capacity
      raise "Sorry, the docking station is full"
    end
    @bikes << bike
    @bikes[-1]
  end
end
