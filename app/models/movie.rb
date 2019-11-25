class Movie

    @@all = []

    attr_reader :title

    def initialize(title, characters)
        @title = title
        characters.each {|character| character.movies << self}
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select {|character| character.movies.include?(self)}
    end

    def actors
        characters.map {|character| character.actor}
    end

    def self.most_actors
        @@all.max_by {|movie| movie.charcters.count}
    end

end