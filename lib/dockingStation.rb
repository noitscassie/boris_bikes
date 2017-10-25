require "./lib/bike.rb"
class DockingStation

  attr_reader @@count


  def release_bike
    Bike.new
    @@count -= 1
  end

  def dock(bike)
    @@count += 1
  end
end
