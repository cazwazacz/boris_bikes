
class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      fail 'No bikes available'
    else
      @bikes.pop
    end
  end

  def dock(bike)
    if @bikes.length <= 20
      @bikes << bike
    else
      fail 'The docking station is full'
    end
  end

end
