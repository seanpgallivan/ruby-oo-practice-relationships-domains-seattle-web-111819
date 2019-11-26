class Movie

    @@all = []

    attr_reader :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Performance.all.select {|perf| perf.video == self}
    end

    def actors
        characters.map {|character| character.actor}
    end

    def self.most_actors
        @@all.max_by {|movie| movie.charcters.count}
    end

end