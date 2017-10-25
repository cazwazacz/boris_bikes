require 'docking_station'
require 'bike'

describe DockingStation do

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end

    it 'only returns non-broken bikes' do
      subject.dock(Bike.new)
      broken_bike = Bike.new
      broken_bike.working = false
      subject.dock(broken_bike)
      expect(subject.release_bike.working).to eq(true)
    end

    it 'all bikes are broken when user tries to release one' do
      broken_bike = Bike.new
      broken_bike.working = false
      subject.dock(broken_bike)
      expect{subject.release_bike}.to raise_error "All bikes are currently out of order"
    end

  end

  describe "#dock(bike)" do
    it "raises error when the station can no accept bikes" do

      expect{21.times {subject.dock(Bike.new)}}.to raise_error "The docking station is full"
    end

  end

end
