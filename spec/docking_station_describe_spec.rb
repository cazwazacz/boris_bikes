require 'docking_station'
require 'bike'

describe DockingStation do

  station =   DockingStation.new
  bike = station.release_bike

  it "releases bike and is working" do
    expect(station).to respond_to(:release_bike)
    expect(bike.working?).to eq true
  end

  it "docks the bike" do
    expect(station).to respond_to(:dock).with(1).argument
  end

  it "raises" do
    expect {station.release_bike}.to raise_error
  end

end
