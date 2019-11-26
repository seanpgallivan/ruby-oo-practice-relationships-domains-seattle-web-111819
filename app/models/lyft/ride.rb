class Ride

    @@all = []

    attr_reader :driver, :passenger

    def initialize(driver, passengrer, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        @@all.reduce(0.0) {|sum, trip| sum + trip.distance} / @@all.count
    end

end
