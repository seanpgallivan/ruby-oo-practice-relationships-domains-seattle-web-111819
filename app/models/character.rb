class Character

    @@all = []

    attr_reader :name, :actor

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def performances
        Performance.all.select {|perf| perf.character == self}
    end

    def self.most_appearances
        @@all.max_by {|character| character.performances.count}
    end

end
