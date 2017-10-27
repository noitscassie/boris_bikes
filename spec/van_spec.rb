require 'van'
require 'docking_station'
require 'bike'

describe Van do
  it { is_expected.to respond_to(:collect_bikes).with(1).argument}
  it 'only drops off 16 bikes when spare_capacity is 16 and the van has 20' do
    bikes = []
    20.times {bikes << Bike.new}
    subject.collect_bikes(bikes)
    station = DockingStation.new
    4.times{station.dock(Bike.new)}
    station.receive_fixed_bikes(subject.drop_bikes(station.spare_capacity))
    expect(subject.bikes.length).to eq 4
  end
end
