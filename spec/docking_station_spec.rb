require 'docking_station'
require 'bike'

describe DockingStation do

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end

    it 'release working bikes' do
      bike = double("bike", :working? => true)
      allow(bike).to receive(:working?).and_return(true)
      subject.dock(bike)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
    end
  end

  describe "#dock(bike)" do
    it "raises error when the station can no accept bikes" do

      expect{21.times {subject.dock(Bike.new)}}.to raise_error "The docking station is full"
    end

  end

  describe '#broken_bikes' do
    it 'sorts broken bikes, takes them out of the array and returns them' do
      bikes = []
      5.times {bikes << double("bike", :working? => false)}
      5.times {bikes << double("bike", :working? => true)}
      bikes.shuffle
      bikes.each{|bike| subject.dock(bike)}
      expect(subject.remove_broken_bikes.length).to eq 5
    end
  end

end
