require 'dockingStation.rb'

#describe "Instantiating before(:each) variables" do
  #before(:each) do
    #bike = Bike.new
    #station = DockingStation.new
  #end

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

  describe "Checking if there are any bikes when there are no bikes" do
    station = DockingStation.new
    it "Should return false as there are no bikes in the station" do
      expect(station.any_bikes?).to eq(false)
    end
  end

  describe "Checking if there are any bikes when there are bikes" do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    it "Should return true as there are bikes in the station" do
      expect(station.any_bikes?).to eq(true)
    end
  end

  #Look up before_each and after_each methods for test setup - continue to research why these are not working in the other commented code
#end
