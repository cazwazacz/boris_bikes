
class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?

    p @bikes
    chosen = @bikes.select{|x| x.working == true}.pop
    @bikes.delete(chosen)
    fail 'All bikes are currently out of order' if chosen == nil
    chosen

  end

  def dock(bike)
    fail 'The docking station is full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= @capacity ? true : false
  end

  def empty?
    @bikes.empty? ? true : false
  end

end
