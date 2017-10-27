class Garage
  attr_reader :bikes
  def receive_bikes(bikes)
    @bikes = bikes
  end

  def fix_bikes
    @bikes.map {|x| x.working = true }
  end

  def pass_fixed_bikes
    fixed_bikes = @bikes
    @bikes = []
    fixed_bikes
  end
end
