require 'dockingStation.rb'


describe DockingStation do
  it { should respond_to(:release_bike) }
  it { should respond_to(:dock)}
end


describe DockingStation.new.release_bike do
  it { is_expected.to be_an_instance_of(Bike)}
end

describe  DockingStation.new.release_bike.working? do
  it { is_expected.to eq(truec tests that require arguments)}
end

describe DockingStation.new.dock(Bike.new) do
  it "Adds a bike to a docking station" do
    is_expected.to eq("st")
  end
end
