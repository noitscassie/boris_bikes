<<<<<<< HEAD
require 'bike.rb'

describe Bike do
  it { is_expected.to respond_to(:working?)}
=======
require 'bike'


describe Bike do
it { should respond_to(:working?) }
>>>>>>> 7b23b4061b5925bfb57562ff2c71e4994ef21a43
end
