class Actor

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def performances
        Performance.all.select {|perf| perf.character.actor == self}
    end

    def characters
        Character.all.select {|character| character.actor == self}
    end

    def self.most_characters
        @@all.max_by {|actor| actor.characters.count}
    end

end