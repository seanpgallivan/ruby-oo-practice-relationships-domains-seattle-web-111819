class Show

    @@all = []

    attr_reader :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def episodes
        Episode.all.select {|episode| episode.show == self}
    end

    def characters
        episodes.map {|episode| episode.characters}.uniq
    end

    def actors
        characters.map {|character| character.actor}
    end

    def on_the_big_screen
        Movie.all.select {|movie| movie.title = self.title}
    end

end