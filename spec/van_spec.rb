require 'van'

describe Van do
  it { is_expected.to respond_to(:collect_bikes).with(1).argument}
end
