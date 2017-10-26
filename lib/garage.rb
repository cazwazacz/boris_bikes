class Garage
  def repair_bikes(broken_bikes)
    @repaired_bikes = broken_bikes.each{|x| x.working = true}
  end
end
