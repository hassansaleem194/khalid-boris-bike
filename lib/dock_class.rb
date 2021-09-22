class Dockingstation
    def release_bike
        return Bike.new
    end
    
    def dock(bike)
        @bike = bike
    end

    def see_bike
        return "Bike docked: #{@bike}"
    end

end     