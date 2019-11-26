class Driver

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def passengers
        rides.map {|ride| ride.passenger}.uniq
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def total_distance
        rides.reduce(0.0) {|sum, ride| sum + ride.distance}
    end

    def self.mileage_cap(distance)
        @@all.select {|driver| driver.total_distance >= distance}
    end

end