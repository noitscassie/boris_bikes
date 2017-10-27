require 'garage'
require 'bike'

describe Garage do
  it { is_expected.to respond_to(:receive_bikes).with(1).argument}

  it '#fix_bikes' do
    broken_bikes = []
    5.times { broken_bikes << Bike.new(false)}
    subject.receive_bikes(broken_bikes)
    subject.fix_bikes
    expect(subject.bikes.detect { |x| x.working? == false }).to eq nil
  end
end
