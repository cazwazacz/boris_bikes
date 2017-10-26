require 'garage'

describe Garage do

  it 'accepts bikes' do
    expect(subject).to respond_to(:repair_bikes).with(1).argument
  end

  it 'repairs broken bikes' do
    broken_bikes = []
    10.times{broken_bikes << Bike.new(false)}
    expect(subject.repair_bikes(broken_bikes).detect{|i| i.working == false}).to eq nil
  end

end
