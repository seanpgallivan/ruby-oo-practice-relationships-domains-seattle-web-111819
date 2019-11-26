class Session

    @@all = []

    attr_reader :client, :location

    def initialize(client, location)
        