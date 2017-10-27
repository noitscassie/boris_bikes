require 'docking_station'

describe DockingStation do

  let(:random_bikes) do
    bikes = []
    5.times{bikes << Bike.new}
    5.times{bikes << Bike.new(false)}
    bikes.shuffle!
  end

  let(:bike) {double :bike}

  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it "docks a bike" do
    allow(bike).to receive(:working?).and_return true
    subject.dock(bike)
    expect(subject.bikes[-1]).to eq bike
  end

  it "raises error message when no bikes are present" do
    expect { subject.release_bike }.to raise_error("Sorry, no bikes are available")
  end

  it "raises error message when dock is full" do
    allow(bike).to receive(:working?).and_return true
    expect { 21.times { subject.dock(bike) } }.to raise_error("Sorry, the docking station is full")
  end

  it "releases a bike from the docking station" do
    allow(bike).to receive(:working?).and_return true
    20.times { subject.dock(bike) }
    bike = subject.bikes[-1]
    expect(subject.release_bike).to eq bike
  end

  it "reports bike as broken" do
    random_bikes.each{|x| subject.dock(x)}
    expect(subject.broken_bikes.detect{|x| x.working? == true}).to eq nil
  end

  it "will not release a broken bike to the user" do
    random_bikes.each {|x| subject.dock(x)}
    expect(subject.bikes.detect{|x| x.working? == false}).to eq nil
  end

  it "returns all of the broken bikes in a docking station" do
    random_bikes.each {|x| subject.dock(x)}
    expect(subject.pass_broken_bikes.length).to eq 5
  end

  it "text" do

  end

end
