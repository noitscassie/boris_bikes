require 'dockingStation.rb'


describe DockingStation do
  it { should respond_to(:release_bike) }
end


describe DockingStation.new.release_bike do
  it { is_expected.to be_an_instance_of(Bike)}
end

describe  DockingStation.new.release_bike.working? do
  it { is_expected.to eq(true)}
end
