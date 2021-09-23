class Dockingstation
    def release_bike
        return Bike.new
    end
    
    def dock(bike)
        @bike = bike
        return "Bike docked: #{@bike}"
    end

end     