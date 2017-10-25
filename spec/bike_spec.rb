require 'bike'

describe "if bike works" do
  bike = Bike.new

  it "should respond to working" do
    expect(bike).to respond_to(:working)
  end

  it "user passing bike as broken" do
    broken_bike = Bike.new
    broken_bike.working = false
    expect(broken_bike.working).to eq(false)
  end

end
