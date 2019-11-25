class Show

    @@all = []

    attr_reader :title

    def initialize(title, characters)
        @title = title
        characters.each {|character| character.shows << self}
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select {|character| character.shows.include?(self)}
    end

    def actors
        characters.map {|character| character.actor}
    end

    def on_the_big_screen
        Movie.all.select {|movie| movie.title = self.title}
    end

end