class Van
  attr_accessor :bikes

  def collect_bikes(bikes)
    @bikes = bikes
  end

  def drop_bikes
    bikes = @bikes
    @bikes = []
    bikes
  end
end
