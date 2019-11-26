class Passenger

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        rides.map {|ride| ride.driver}.uniq
    end

    def total_distance
        rides.reduce(0.0) {|sum, ride| sum + ride.distance}
    end

    def self.premium_members
        @@all.select {|passenger| passenger.total_distance >= 100}
    end

end