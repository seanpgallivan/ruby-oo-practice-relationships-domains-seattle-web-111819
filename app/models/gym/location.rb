class Location

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select {|client| client.location == self}
    end

    def trainers
        clients.map {|client| client.trainer}.uniq
    end

    # should find which location has the least clients training there. we need to increase the marketing spend for that location!
    def self.least_clients
        @@all.min_by {|location| location.clients.count}
    end

end