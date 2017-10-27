class Garage
  attr_reader :bikes
  def receive_bikes(bikes)
    @bikes = bikes
  end

  def fix_bikes
    @bikes.map {|x| x.working = true }
  end
end
