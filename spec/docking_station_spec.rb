require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it "docks a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes[-1]).to eq bike
  end

  it "raises error message when no bikes are present" do
    expect { subject.release_bike }.to raise_error("Sorry, no bikes are available")
  end

  it "raises error message when dock is full" do
    expect { 21.times { subject.dock(Bike.new) } }.to raise_error("Sorry, the docking station is full")
  end

  it "releases a bike from the docking station" do
    20.times { subject.dock(Bike.new) }
    bike = subject.bikes[-1]
    expect(subject.release_bike).to eq bike
  end

  it "reduces the number of bikes in the docking station" do
    20.times { subject.dock(Bike.new) }
    subject.release_bike
    expect(subject.bikes.length).to eq 19
  end

end
