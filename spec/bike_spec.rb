require 'bike'

describe Bike do
  it "checks that the bike is working" do
    expect(subject.working?).to eq true
  end
end
