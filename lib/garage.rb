class Garage
  attr_reader :bikes
  def receive_bikes(bikes)
    @bikes = bikes
  end
end
