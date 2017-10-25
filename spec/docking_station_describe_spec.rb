require 'docking_station'
require 'bike'

describe DockingStation do

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # we want to release the bike we docked
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe "#dock(bike)" do
    it "raises error when the station can no accept bikes" do

      expect{21.times {subject.dock(Bike.new)}}.to raise_error "The docking station is full"
    end
  end

end
