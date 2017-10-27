require 'garage'
require 'bike'

describe Garage do
  it { is_expected.to respond_to(:receive_bikes).with(1).argument}

  it '#fix_bikes' do
    broken_bikes = []
    5.times {subject.receive_bikes(Bike.new(false))}
    subject.fix_bikes
    expect(subject.bikes)
  end
end
