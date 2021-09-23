require "dock_class"

describe Dockingstation do 
  it 'docking station response to release_bike' do
    docking_station = Dockingstation.new
    release = docking_station.release_bike
  end  

  it 'returns a bike ' do 
    docking_station = Dockingstation.new
    my_bike = docking_station.release_bike
    expect(my_bike.is_a? Bike).to eq true
  end
  
  # it 'docks a bike' do
  #   dock_bike = Dockingstation.new
  #   bike_1 = dock_bike.dock("red bike")
  #   expect(bike_1).to eq "Bike docked: red bike"
  # end
end
