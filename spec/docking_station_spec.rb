require "docking_station.rb"
require "bike.rb"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it "is expected to create a new bike" do
    expect(DockingStation.new.release_bike).to eq(Bike.new)
  end

end
