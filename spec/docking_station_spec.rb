require "dock_class"

describe Dockingstation do 
  it 'docking station response to release_bike' do
    docking_station = Dockingstation.new
    bike = Bike.new
    docking_station.dock(bike)
    release = docking_station.release_bike
  end  

  it 'returns a bike ' do 
    docking_station = Dockingstation.new
    bike = Bike.new
    docking_station.dock(bike)
    my_bike = docking_station.release_bike
    expect(my_bike.is_a? Bike).to eq true
  end
  
  it 'docks a bike' do
    docking_station = Dockingstation.new
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq (bike)
  end

  it 'return an empty docking station' do
    expect{subject.release_bike}.to raise_error 'Sorry no bikes available'
  end
end
