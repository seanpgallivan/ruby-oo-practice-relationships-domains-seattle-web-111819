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

    def characters
        Character.all.select {|character| character.actor == self}
    end

    def movies
        characters.map {|character| character.movies}.flatten
    end

    def shows
        characters.map {|character| character.shows}.flatten
    end

    def self.most_characters
        @@all.max_by {|actor| actor.characters.count}
    end

end