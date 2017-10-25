
class DockingStation
  attr_reader :bike, :count

  def initialize
    @count = 0
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    if @count == 0
      @bike = bike
      @count += 1
    else
      fail 'the docking station is full'
    end
  end

end
