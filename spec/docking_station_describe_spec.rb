require 'docking_station'
require 'bike'

describe DockingStation do

  # station =   DockingStation.new
  # bike = station.release_bike
  #
  # it "releases bike and is working" do
  #   expect(station).to respond_to(:release_bike)
  #   expect(bike.working?).to eq true
  # end
  #
  # it "docks the bike" do
  #   expect(station).to respond_to(:dock).with(1).argument
  # end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # we want to release the bike we docked
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

end
