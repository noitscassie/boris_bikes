class Van
  attr_accessor :bikes

  def collect_bikes(bikes)
    @bikes = bikes
  end

  def drop_bikes(spare_capacity)
    if spare_capacity < @bikes.length
      bikes = @bikes.slice!(0, spare_capacity)
    else
      bikes = @bikes
      @bikes = []
      bikes
    end
  end
end
