class Dockingstation
    def initialize
        @bike_array = []
    end

    def release_bike
        fail 'Sorry no bikes available' unless @bike_array.length > 0
        return Bike.new
        # if @bike_array.length > 0
        #     return Bike.new
        # else
        #     raise 'Sorry no bikes available'
        # end
    end
    
    def dock(bike)
        @bike = bike
        @bike_array.push(bike)
        return @bike
    end

end     