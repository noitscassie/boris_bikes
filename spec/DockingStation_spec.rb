require 'dockingStation.rb'


describe DockingStation do
  it { should respond_to(:release_bike) }
  it { should respond_to(:dock)}
  it { should respond_to(:any_bikes?)}
end


describe DockingStation.new.release_bike do
  it { is_expected.to be_an_instance_of(Bike)}
end

describe  DockingStation.new.release_bike.working? do
  it { is_expected.to eq(true)}
end

describe "Testing to dock a bike" do
  station = DockingStation.new
  bike = station.release_bike
  station.dock(bike)
  it "Adds a bike to a docking station" do
    expect(station.available.length).to eq(1)
  end
end

describe "Allowing members of the public to check if there's any bikes" do
  station = DockingStation.new
    if station.available.length > 0
      

    end
  end
