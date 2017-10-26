class Garage
  # attr_reader :repaired_bikes
  def repair_bikes(broken_bikes)
    @repaired_bikes = broken_bikes.each{|x| x.working = true}
  end
end
