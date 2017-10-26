class Van
  attr_reader :bikes
  def collect_broken_bikes(broken_bikes)
    @bikes = broken_bikes
  end
  def collect_repaired_bikes(repaired_bikes)
    @bikes = repaired_bikes
  end
end
