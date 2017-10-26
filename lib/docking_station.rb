
class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?

    chosen = @bikes.select{|x| x.working? == true}.pop
    @bikes.delete(chosen)
    fail 'All bikes are currently out of order' if chosen == nil
    chosen

  end

  def dock(bike)
    fail 'The docking station is full' if full?
    @bikes << bike
  end

  def remove_broken_bikes
    @broken_bikes = @bikes.select{|x| x.working? == false}
    @bikes = @bikes.reject{|x| x.working? == false}
    @broken_bikes
  end

  private

  def full?
    @bikes.count >= @capacity ? true : false
  end

  def empty?
    @bikes.empty? ? true : false
  end

end
