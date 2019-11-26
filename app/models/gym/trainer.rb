class Trainer

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
        Client.all.select {|client| client.trainer == self}
    end

    def locations
        clients.map {|client| client.location}.uniq
    end

    # should find which trainer has the most clients. give that trainer a bonus!
    def self.most_clients
        @@all.max_by {|trainer| trainer.clients.count}
    end

end