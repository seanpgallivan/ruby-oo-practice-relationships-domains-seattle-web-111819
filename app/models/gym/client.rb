class Client

    @@all = []

    attr_reader :name
    attr_accessor :trainer, :location

    def initialize(name, trainer, location)
        @name = name
        @trainer = trainer
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    # should take a trainer as argument and assign it to the client
    def assign_trainer(trainer)
        self.trainer = trainer
    end

    def assign_location(location)
        self.location = location
    end

end